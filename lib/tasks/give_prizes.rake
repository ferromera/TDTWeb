namespace :db do
  desc "Entrega premios"
  task give_prizes: :environment do
      AyB=Team.find(3)
      AyB.money+=13560000
      AyB.save   
      CSP=Team.find(4)
      CSP.money+=0
      CSP.save  
      HON=Team.find(5)
      HON.money+=23350000
      HON.save  
      BAZ=Team.find(6)
      BAZ.money+=1120000
      BAZ.save  
      USP=Team.find(7)
      USP.money+=52780000
      USP.save  
      STB=Team.find(8)
      STB.money+=67330000
      STB.save  
      SPF=Team.find(9)
      SPF.money+=0
      SPF.save  
      BDG=Team.find(10)
      BDG.money+=36070000
      BDG.save   
  
  end
end