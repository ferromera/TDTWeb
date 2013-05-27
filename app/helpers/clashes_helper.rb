#coding: utf-8
module ClashesHelper
  def getPG (team1 ,team2)
    clashes=@clashes
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
    clashes=@clashes
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
    clashes=@clashes
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
    clashes=@clashes
    pj=0
    clashes.each do |c|
      if c.team1.downcase==team.downcase or c.team2.downcase==team.downcase then
          pj=pj+1          
      end
    end
    pj
  end
  def getPGof team
    clashes=@clashes
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
    clashes=@clashes
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
    clashes=@clashes
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
    clashes=@clashes
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
    clashes=@clashes
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
  