
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
      when team.name.downcase == "colorado 36" then "/assets/teams/CO.png"
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
  
  def calcularPromedio team
    if team.players.empty?
      0
    else
    players=team.players
    promedio=0.0
    i=0
    players.each do |p|
      promedio = promedio + p.overallrating
      i=i+1
    end
    (promedio/i).round(2)
    end
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
  def calcularTop11 team
    if team.players.size < 11
      0
    else
    players=team.players.sort{|a,b| b.overallrating <=> a.overallrating}
    promedio=0.0
    for i in 0..10 do
      promedio=promedio+players[i].overallrating
    end
    (promedio/11.0).round(2)
    end
  end
  def getDorsals team, player
    result=""
    (1..99).each do |i|
        if(player.dorsal!= nil and player.dorsal==i)
          result=result+"<option selected=\"selected\">#{i}</option>"
      
      else
        result=result+"<option>#{i}</option>"
      end
    end
    result
  end
  def setDorsals params
    players=@team.players
    players.each do |p|
      
        p.dorsal=params["#{p.id}"]
        p.save
    end
  end
  def setAlignmentPosition params
    players=@team.players
    players.each do |p|
      
        p.x=params["x-#{p.id}"]
        p.y=params["y-#{p.id}"]
        p.alignmentpos=params["pos-#{p.id}"]
        p.save
    end
  end
  def resetAlignmentPosition
    players=@team.players
    players.each do |p|
      
        p.x=params["0"]
        p.y=params["0"]
        p.alignmentpos=""
        p.save
    end
  end
  def getPosOptions p
    if p.alignmentpos == ""
      result="<option selected=\"selected\">#{ p.position}</option>"
      selected=p.position
    else
      result="<option selected=\"selected\">#{ p.alignmentpos}</option>"
      selected=p.alignmentpos
    end
    if p.gk and selected != "GK"
      result=result+"<option>GK</option>"
    end
    if p.swp and selected != "SWP"
      result=result+"<option>SWP</option>"
    end
    if p.cb and selected != "CB"
      result=result+"<option>CB</option>"
    end
    if p.rb and selected != "RB"
      result=result+"<option>RB</option>"
    end
    if p.lb and selected != "LB"
      result=result+"<option>LB</option>"
    end
    if p.dmf and selected != "DMF"
      result=result+"<option>DMF</option>"
    end
    if p.cmf and selected != "CMF"
      result=result+"<option>CMF</option>"
    end
    if p.rmf and selected != "RMF"
      result=result+"<option>RMF</option>"
    end
    if p.lmf and selected != "LMF"
      result=result+"<option>LMF</option>"
    end
    if p.amf and selected != "AMF"
      result=result+"<option>AMF</option>"
    end
    if p.rwf and selected != "RWF"
      result=result+"<option>RWF</option>"
    end
    if p.lwf and selected != "LWF"
      result=result+"<option>LWF</option>"
    end
    if p.ss and selected != "SS"
      result=result+"<option>SS</option>"
    end
    if p.cf and selected != "CF"
      result=result+"<option>CF</option>"
    end
   result
  end
  def getShirt team
    case
      when team.name.downcase == "honolulu lights" then "/assets/shirtHON.png"
      when team.name.downcase == "bazinga f.c." then "/assets/shirtBAZ.png"
      when team.name.downcase == "wisconsin badgers" then "/assets/shirtWIS.png"
      when ((team.name.downcase == "comando superior peronista") or 
        (team.name.downcase == "c. s. peronista")) then "/assets/shirtCSP.png"
      when team.name.downcase == "saint bastian" then "/assets/shirtSTB.png"
      when team.name.downcase == "sportivo fiesta" then "/assets/shirtSPF.png"
      when team.name.downcase == "uspallata f.b." then "/assets/shirtUSP.png"
      when team.name.downcase == "antigua y barbuda" then "/assets/shirtAYB.png"
      when team.name.downcase == "green machine" then "/assets/shirtGMC.png"
      when team.name.downcase == "defensores de ararat" then "/assets/shirtDEF.png"
      when team.name.downcase == "colorado 36" then "/assets/shirtCOL.png"
      else "/assets/shirt.png"
      end
  end
   
    
end
