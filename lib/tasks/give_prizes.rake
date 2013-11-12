namespace :db do
  desc "Entrega premios"
  task give_prizes: :environment do
      AyB=Team.find(3)
      AyB.money+=8060000
      AyB.save   
      CSP=Team.find(4)
      CSP.money+=35960000
      CSP.save  
      HON=Team.find(5)
      HON.money+=0
      HON.save  
      BAZ=Team.find(6)
      BAZ.money+=0
      BAZ.save  
      USP=Team.find(7)
      USP.money+=0
      USP.save  
      STB=Team.find(8)
      STB.money+=27250000
      STB.save  
      SPF=Team.find(9)
      SPF.money+=5760000
      SPF.save  
      BDG=Team.find(10)
      BDG.money+=0
      BDG.save   
      GMC=Team.find(13)
      GMC.money+=0
      GMC.save
      DEF=Team.find(14)
      DEF.money+=5760000
      DEF.save
      COL=Team.find(15)
      COL.money+=32230000
      COL.save
  
  end
end