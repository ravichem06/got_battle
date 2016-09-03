class CreateBattles < ActiveRecord::Migration[5.0]
  def change
    create_table :battles do |t|
      t.string :name
      t.datetime :year
      t.integer :battle_number
      t.string :attacker_king
      t.string :defender_king
      t.string :attacker_1
      t.string :defender_1
      t.string :battle_outcome
      t.string :battle_type
      t.integer :major_deaths
      t.integer :major_capture
      t.integer :attacker_size
      t.integer :defender_size
      t.string :attacker_commander
      t.string :defender_commander
      t.boolean :summer
      t.string :location
      t.string :region
      t.text :note

      
    end

    add_index :battles, :name,                unique: true
    add_index :battles, :attacker_king
    add_index :battles, :defender_king
    add_index :battles, :battle_type
    add_index :battles, :location
  end
end
