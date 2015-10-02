module WestfieldApis
  extend ActiveSupport::Concern

  class_methods do
    def requests
      @@requests ||= {}
    end

    def url_for(path)
      "https://api.westfield.io/#{path}"
    end

    def fetch_centre_stores(centre_id)
      fetch_stores({centre_id: centre_id})
    end

    def fetch_stores(query = {})
      fetch(url_for('stores'), query)
    end

    def fetch_centres(query = {})
      fetch(url_for('centres'), query)
    end

    def fetch(path, query)
      page = 1
      page_count = 1
      cache_key = "#{path}?#{query.to_param}"

      requests[cache_key] ||= [].tap do |data|
        while page_count >= page do
          body = HTTParty.get(path, query: query.merge(page: page)).parsed_response
          data.push(*body['data'])
          page_count = body['meta']['page_count']
          page += 1
        end
      end
    end
  end
end
