class AddCrawlIdToStores < ActiveRecord::Migration
  def change
    add_column :stores, :crawl_id, :integer
    add_index :stores, :crawl_id
  end
end
