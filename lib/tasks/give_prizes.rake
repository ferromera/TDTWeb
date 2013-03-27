namespace :db do
  desc "Entrega premios"
  task give_prizes: :environment do
      AyB=Team.find(3)
      AyB.money+=9160000
      AyB.save   
      CSP=Team.find(4)
      CSP.money+=25960000
      CSP.save  
      HON=Team.find(5)
      HON.money+=33190000
      HON.save  
      BAZ=Team.find(6)
      BAZ.money+=0
      BAZ.save  
      USP=Team.find(7)
      USP.money+=55610000
      USP.save  
      STB=Team.find(8)
      STB.money+=63190000
      STB.save  
      SPF=Team.find(9)
      SPF.money+=21390000
      SPF.save  
      BDG=Team.find(10)
      BDG.money+=44560000
      BDG.save   
      GMC=Team.find(13)
      GMC.money+=6300000
      GMC.save
  
  end
end