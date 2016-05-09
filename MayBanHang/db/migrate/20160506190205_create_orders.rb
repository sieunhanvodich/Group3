class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :content
      t.references :table, index: true

      t.timestamps
    end
  end
end
