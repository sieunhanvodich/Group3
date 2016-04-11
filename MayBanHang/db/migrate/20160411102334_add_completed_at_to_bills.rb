class AddCompletedAtToBills < ActiveRecord::Migration
  def change
    add_column :bills, :completed_at, :datetime
  end
end
