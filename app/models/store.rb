class Store < ActiveRecord::Base
  include WestfieldApis
  belongs_to :crawl
  before_save :fetch

  def fetch
    self.data = Store.fetch_store(self.store_service_id)
  end
end
