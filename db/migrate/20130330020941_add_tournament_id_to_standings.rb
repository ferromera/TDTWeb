class AddTournamentIdToStandings < ActiveRecord::Migration
  def change
    add_column :standings , :tournament_id, :integer
  end
end
