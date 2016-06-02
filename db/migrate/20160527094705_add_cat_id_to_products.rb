class AddCatIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :category_id, :string
    add_index :products, :category_id
  end
end
