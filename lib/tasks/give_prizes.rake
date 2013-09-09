namespace :db do
  desc "Entrega premios"
  task give_prizes: :environment do
      AyB=Team.find(3)
      AyB.money+=0
      AyB.save   
      CSP=Team.find(4)
      CSP.money+=26000000
      CSP.save  
      HON=Team.find(5)
      HON.money+=32000000
      HON.save  
      BAZ=Team.find(6)
      BAZ.money+=40000000
      BAZ.save  
      USP=Team.find(7)
      USP.money+=0
      USP.save  
      STB=Team.find(8)
      STB.money+=34000000
      STB.save  
      SPF=Team.find(9)
      SPF.money+=0
      SPF.save  
      BDG=Team.find(10)
      BDG.money+=36000000
      BDG.save   
      GMC=Team.find(13)
      GMC.money+=14000000
      GMC.save
      DEF=Team.find(14)
      DEF.money+=14000000
      DEF.save
      COL=Team.find(15)
      COL.money+=30000000
      COL.save
  
  end
end