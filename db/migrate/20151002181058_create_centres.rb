class CreateCentres < ActiveRecord::Migration
  def change
    create_table :centres do |t|
      t.string :centre_id

      t.timestamps null: false
    end
  end
end
