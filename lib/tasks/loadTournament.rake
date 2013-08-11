require 'csv'    

namespace :db do
  desc "Carga los datos de un torneo"
  
  task load_tournament: :environment do
   # for i in 13 do
     # if i==8 
     #   next
     # end
      file = File.open("TDT15_posiciones.csv", "r:utf-8")
      csv = CSV.parse(file)
      tournament=Tournament.create
      first=true
      csv.each do |row|
        if first
          tournament.name=row[0]
          puts "Creando #{tournament.name} ..."
          tournament.winner=row[1]
          tournament.scorer=row[2]
          first=false
        else
          standing=Standing.create
          standing.position=Integer(row[0])
          standing.teamname=row[1]
          standing.played=Integer(row[2])
          standing.won=Integer(row[3])
          standing.draw=Integer(row[4])
          standing.lost=Integer(row[5])
          standing.goalsfor=Integer(row[6])
          standing.goalsagainst=Integer(row[7])
          standing.points=Integer(row[8])
          standing.prize=Integer(row[9])
          standing.tournament=tournament
          standing.save
        end
      end
      tournament.save
   # end
  end
end
