class CreateCrawls < ActiveRecord::Migration
  def change
    create_table :crawls do |t|
      t.references :centre, index: true, foreign_key: true
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
