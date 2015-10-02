class Crawl < ActiveRecord::Base
  belongs_to :centre
  has_many :stores
end
