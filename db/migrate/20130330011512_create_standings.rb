class CreateStandings < ActiveRecord::Migration
  def change
    create_table :standings do |t|
      t.string :teamname
      t.integer :played
      t.integer :won
      t.integer :draw
      t.integer :lost
      t.integer :goalsfor
      t.integer :goalsagainst
      t.integer :points

      t.timestamps
    end
  end
end
