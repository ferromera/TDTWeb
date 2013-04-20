
module TeamsHelper
  def matchEmblem team
      case
      when team.name.downcase == "honolulu lights" then "/assets/teams/HL.png"
      when team.name.downcase == "bazinga f.c." then "/assets/teams/BZ.png"
      when team.name.downcase == "wisconsin badgers" then "/assets/teams/WS.png"
      when ((team.name.downcase == "comando superior peronista") or 
        (team.name.downcase == "c. s. peronista")) then "/assets/teams/CS.png"
      when team.name.downcase == "saint bastian" then "/assets/teams/SB.png"
      when team.name.downcase == "sportivo fiesta" then "/assets/teams/SF.png"
      when team.name.downcase == "uspallata f.b." then "/assets/teams/US.png"
      when team.name.downcase == "antigua y barbuda" then "/assets/teams/AB.png"
      when team.name.downcase == "green machine" then "/assets/teams/GM.png"
      when team.name.downcase == "defensores de ararat" then "/assets/teams/DE.png"
      else "/assets/teams/default_emblem.png"
      end
  end

  def calcularValor team
    players=team.players
    valor=0
    players.each do |p|
      valor = valor + (((p.overallrating/10.0)**8)/1E6).round(2)
    end
    valor.round(2)
  end
  
  def calcularPrimedio team
    players=team.players
    promedio=0.0
    i=0
    players.each do |p|
      promedio = promedio + p.overallrating
      i=i+1
    end
    (promedio/i).round(2)
  end
  
  def calcularTorneos team
      name=team.name
      tournaments=Tournament.all
      torneos=0
      tournaments.each do |t|
        if t.winner.downcase ==name.downcase
          torneos=torneos+1
        end
    end
    torneos
  end
end
