class CreateReceipts < ActiveRecord::Migration[6.0]
  def change
    create_table :receipts do |t|
      t.string :product
      t.float :price
      t.string :location
      t.string :category
      t.string :needful

      t.timestamps
    end
  end
end
