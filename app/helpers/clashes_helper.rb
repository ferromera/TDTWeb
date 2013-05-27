#coding: utf-8
module ClashesHelper
  def getPG (team1 ,team2)
    clashes=Clash.all
    pg=0
    clashes.each do |c|
      if c.team1.downcase==team1.downcase and c.team2.downcase==team2.downcase then
        if c.goals1 > c.goals2 then
          pg=pg+1
        end
       elsif c.team1.downcase==team2.downcase and c.team2.downcase==team1.downcase then
        if c.goals1 < c.goals2 then
          pg=pg+1
        end
         
      end
    end
    pg
  end
  def getPE (team1 ,team2)
    clashes=Clash.all
    pe=0
    clashes.each do |c|
      if c.team1.downcase==team1.downcase and c.team2.downcase==team2.downcase then
        if c.goals1 == c.goals2 then
          pe=pe+1
        end
       elsif c.team1.downcase==team2.downcase and c.team2.downcase==team1.downcase then
        if c.goals1 == c.goals2 then
          pe=pe+1
        end
         
      end
    end
    pe
   end
    def getPP (team1 ,team2)
    clashes=Clash.all
    pp=0
    clashes.each do |c|
      if c.team1.downcase==team1.downcase and c.team2.downcase==team2.downcase then
        if c.goals1 < c.goals2 then
          pp=pp+1
        end
       elsif c.team1.downcase==team2.downcase and c.team2.downcase==team1.downcase then
        if c.goals1 > c.goals2 then
          pp=pp+1
        end
         
      end
    end
    pp
  end
  
  def getPJof team
    clashes=Clash.all
    pj=0
    clashes.each do |c|
      if c.team1.downcase==team.downcase or c.team2.downcase==team.downcase then
          pj=pj+1          
      end
    end
    pj
  end
  def getPGof team
    clashes=Clash.all
    pg=0
    clashes.each do |c|
      if c.team1.downcase==team.downcase then
        if c.goals1 > c.goals2 then
          pg=pg+1
        end
       elsif c.team2.downcase==team.downcase then
        if c.goals1 < c.goals2 then
          pg=pg+1
        end
         
      end
    end
    pg
  end
  def getPEof team
    clashes=Clash.all
    pe=0
    clashes.each do |c|
      if c.team1.downcase==team.downcase then
        if c.goals1 == c.goals2 then
          pe=pe+1
        end
       elsif c.team2.downcase==team.downcase then
        if c.goals1 == c.goals2 then
          pe=pe+1
        end
         
      end
    end
    pe
  end
  def getPPof team
    clashes=Clash.all
    pp=0
    clashes.each do |c|
      if c.team1.downcase==team.downcase then
        if c.goals1 < c.goals2 then
          pp=pp+1
        end
       elsif c.team2.downcase==team.downcase then
        if c.goals1 > c.goals2 then
          pp=pp+1
        end
         
      end
    end
    pp
  end
  def getGFof team
    clashes=Clash.all
    gf=0
    clashes.each do |c|
      if c.team1.downcase==team.downcase then
          gf=gf+c.goals1 
      elsif c.team2.downcase==team.downcase then
          gf=gf+c.goals2     
      end
    end
    gf
  end
  def getGCof team
    clashes=Clash.all
    gc=0
    clashes.each do |c|
      if c.team1.downcase==team.downcase then
          gc=gc+c.goals2 
      elsif c.team2.downcase==team.downcase then
          gc=gc+c.goals1     
      end
    end
    gc
  end

      
end
  