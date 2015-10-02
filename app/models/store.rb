class Store < ActiveRecord::Base
  belongs_to :crawl
  include WestfieldApis
end
