class ChangeJsonbToJson < ActiveRecord::Migration
  def change
    remove_column :centres, :data, :jsonb
    remove_column :stores, :data, :jsonb
    add_column :centres, :data, :json
    add_column :stores, :data, :json
  end
end
