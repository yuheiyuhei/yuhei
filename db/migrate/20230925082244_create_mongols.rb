class CreateMongols < ActiveRecord::Migration[7.0]
  def change
    create_table :mongols do |t|
      t.string :name
      t.string :genre
      t.string :address
      t.text :about

      t.timestamps
    end
  end
end
