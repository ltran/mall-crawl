class CreateHighlights < ActiveRecord::Migration
  def change
    create_table :highlights do |t|
      t.string :name
      t.string :description
      t.references :store, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
