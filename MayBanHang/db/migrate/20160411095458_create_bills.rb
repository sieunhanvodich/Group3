class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :content
      t.integer :price
      t.references :table, index: true

      t.timestamps
    end
  end
end
