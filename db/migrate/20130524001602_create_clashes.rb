class CreateClashes < ActiveRecord::Migration
  def change
    create_table :clashes do |t|
      t.string :team1
      t.string :team2
      t.integer :goals1
      t.integer :goals2
      t.string :tournament

      t.timestamps
    end
  end
end
