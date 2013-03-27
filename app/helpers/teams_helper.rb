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
      else "/assets/teams/default_emblem.png"
      end
  end
end
