class CreateStrikers < ActiveRecord::Migration
  def change
    create_table :strikers do |t|
      t.string :name
      t.string :team
      t.integer :goals
      t.integer :I
      t.integer :II
      t.integer :III
      t.integer :IV
      t.integer :V
      t.integer :VI
      t.integer :VII
      t.integer :VIII
      t.integer :X
      t.integer :XI
      t.integer :XII
      t.integer :XIII

      t.timestamps
    end
  end
end
