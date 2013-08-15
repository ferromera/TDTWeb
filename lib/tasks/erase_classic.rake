namespace :db do
  desc "Borra los ex jugadores"
  task erase_explayers: :environment do
    Player.find(20262).delete #Cambell
    Player.find(20256).delete #Deisler
    Player.find(20247).delete #Robredo
    Player.find(20321).delete #Jonk
    Player.find(20268).delete #Moller
    Player.find(20346).delete #Rocha
    Player.find(20261).delete #Illgner
    Player.find(20257).delete #Ziege
    Player.find(181).delete #Van Bommel
    Player.find(20254).delete #Mcmanaman
    Player.find(20278).delete #Hassler
    Player.find(20263).delete #Buchwald 
    Player.find(10465).delete #Scholes
    Player.find(20255).delete #R. De Boer
    Player.find(13270).delete #Beckham
  end
end