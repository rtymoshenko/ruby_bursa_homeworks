class CreateGoodsOrders < ActiveRecord::Migration
  def change
    create_table :goods_orders do |t|
      t.references :order, index: true, foreign_key: true
      t.references :good, index: true, foreign_key: true
      t.integer :count
      t.integer :price

      t.timestamps null: false
    end
  end
end
