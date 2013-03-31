class AddWinnerAndStriker < ActiveRecord::Migration
  def change 
    add_column :tournaments , :winner, :string
    add_column :tournaments , :scorer, :string
  end
end
