module WestfieldApis
  extend ActiveSupport::Concern

  class_methods do
    def requests
      @@requests ||= {}
    end

    def url_for(*fragments)
      "https://api.westfield.io/#{fragments.join('/')}"
    end

    def fetch_centre_stores(centre_id)
      fetch_stores({centre_id: centre_id})
    end

    def fetch_stores(query = {})
      fetch(url_for('stores'), query)
    end

    def fetch_store(store_id)
      fetch_resource(url_for('stores', store_id))
    end

    def fetch_centres(query = {})
      fetch(url_for('centres'), query)
    end

    def fetch_resource(path)
      cache_key = "#{path}"
      requests[cache_key] ||= HTTParty.get(path).parsed_response['data']
    end

    def fetch_collection(path, query = {})
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
