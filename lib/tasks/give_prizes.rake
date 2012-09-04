namespace :db do
  desc "Entrega premios"
  task give_prizes: :environment do
      AyB=Team.find(3)
      AyB.money+=13280000
      AyB.save   
      CSP=Team.find(4)
      CSP.money+=7570000
      CSP.save  
      HON=Team.find(5)
      HON.money+=7560000
      HON.save  
      BAZ=Team.find(6)
      BAZ.money+=20260000
      BAZ.save  
      USP=Team.find(7)
      USP.money+=40140000
      USP.save  
      STB=Team.find(8)
      STB.money+=63410000
      STB.save  
      SPF=Team.find(9)
      SPF.money+=-280000
      SPF.save  
      BDG=Team.find(10)
      BDG.money+=29050000
      BDG.save   
  
  end
end