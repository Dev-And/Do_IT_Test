class CreateShoppingCarts < ActiveRecord::Migration
  def change
    create_table :shopping_carts do |t|
      t.shopping_cart_item_fields
      t.timestamps null: false
    end
  end
end
