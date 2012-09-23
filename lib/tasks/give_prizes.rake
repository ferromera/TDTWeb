namespace :db do
  desc "Entrega premios"
  task give_prizes: :environment do
      AyB=Team.find(3)
      AyB.money+=0
      AyB.save   
      CSP=Team.find(4)
      CSP.money+=2990000
      CSP.save  
      HON=Team.find(5)
      HON.money+=8590000
      HON.save  
      BAZ=Team.find(6)
      BAZ.money+=14070000
      BAZ.save  
      USP=Team.find(7)
      USP.money+=61160000
      USP.save  
      STB=Team.find(8)
      STB.money+=18670000
      STB.save  
      SPF=Team.find(9)
      SPF.money+=-0
      SPF.save  
      BDG=Team.find(10)
      BDG.money+=39940000
      BDG.save   
  
  end
end