module StrikersHelper
  def getStrikersByPlayer
    allStriker=Striker.all
    sortedAllStriker=allStriker.sort { |x, y| y.name <=> x.name }
    lastPlayer=""
    newStriker=Striker.new
    strikersByPlayer=[]
    sortedAllStriker.each do |p|
      if p.name != lastPlayer 
        if lastPlayer != ""
          strikersByPlayer<<newStriker.clone
        end
        lastPlayer=p.name
        newStriker=p.clone
        
      else 
        newStriker.goals+=p.goals
        newStriker.I+=p.I
        newStriker.II+=p.II
        newStriker.III+=p.III
        newStriker.IV+=p.IV
        newStriker.V+=p.V
        newStriker.VI+=p.VI
        newStriker.VII+=p.VII
        newStriker.X+=p.X
        newStriker.XI+=p.XI
        newStriker.XII+=p.XII
        newStriker.XIII+=p.XIII
        
      end
    end
    strikersByPlayer<<newStriker.clone
    strikersByPlayer
  end
end