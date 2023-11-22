class AddImageToMongols < ActiveRecord::Migration[7.0]
  def change
    add_column :mongols, :image, :string
  end
end
