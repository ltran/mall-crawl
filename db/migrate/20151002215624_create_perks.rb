class CreatePerks < ActiveRecord::Migration
  def change
    create_table :perks do |t|
      t.text :description
      t.boolean :checked_in
      t.references :store, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
