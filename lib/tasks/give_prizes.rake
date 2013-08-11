namespace :db do
  desc "Entrega premios"
  task give_prizes: :environment do
      AyB=Team.find(3)
      AyB.money+=26000000
      AyB.save   
      CSP=Team.find(4)
      CSP.money+=0
      CSP.save  
      HON=Team.find(5)
      HON.money+=30000000
      HON.save  
      BAZ=Team.find(6)
      BAZ.money+=34000000
      BAZ.save  
      USP=Team.find(7)
      USP.money+=0
      USP.save  
      STB=Team.find(8)
      STB.money+=45000000
      STB.save  
      SPF=Team.find(9)
      SPF.money+=0
      SPF.save  
      BDG=Team.find(10)
      BDG.money+=32000000
      BDG.save   
      GMC=Team.find(13)
      GMC.money+=24000000
      GMC.save
      DEF=Team.find(14)
      DEF.money+=28000000
      DEF.save
      COL=Team.find(15)
      COL.money+=36000000
      COL.save
  
  end
end