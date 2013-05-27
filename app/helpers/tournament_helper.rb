module TournamentHelper
  
  def getClashes tournament
    clashes=Clash.find_all_by_tournament(tournament.name)
 
  end
  
end
