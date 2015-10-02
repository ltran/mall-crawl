class AddDataToCentre < ActiveRecord::Migration
  def change
    add_column :centres, :data, :jsonb
  end
end
