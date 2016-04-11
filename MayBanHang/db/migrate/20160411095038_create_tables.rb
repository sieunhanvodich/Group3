class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.string :title
      t.string :description
      t.string :price

      t.timestamps
    end
  end
end
