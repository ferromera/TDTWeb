class DeletingFkTeamFromUser < ActiveRecord::Migration
  def change
    change_table :users do |t|
    t.remove :team
  
    end
  end
end
