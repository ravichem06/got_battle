class AddAttackersToBattles < ActiveRecord::Migration[5.0]
  def change
    add_column :battles, :attacker_2, :string
    add_column :battles, :attacker_3, :string
    add_column :battles, :attacker_4, :string
    add_column :battles, :defender_2, :string
    add_column :battles, :defender_3, :string
    add_column :battles, :defender_4, :string
    
  end
end
