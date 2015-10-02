class AddDataToStore < ActiveRecord::Migration
  def change
    add_column :stores, :data, :jsonb
  end
end
