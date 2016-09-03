class AddTimestampsToBattles < ActiveRecord::Migration[5.0]
  def change
    add_column :battles, :created_at, :datetime
    add_column :battles, :updated_at, :datetime
  end
end
