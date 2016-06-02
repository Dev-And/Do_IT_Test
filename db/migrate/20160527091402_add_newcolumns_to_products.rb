class AddNewcolumnsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :description, :text
    add_column :products, :image_path, :string
  end
end
