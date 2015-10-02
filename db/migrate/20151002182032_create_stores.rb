class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :store_service_id

      t.timestamps null: false
    end
  end
end
