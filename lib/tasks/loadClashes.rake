require 'csv'    

namespace :db do
  desc "Carga los datos de enfrentamientos"
  
  task loadClashes: :environment do
      file = File.open("clashes.csv", "r:utf-8")
      csv = CSV.parse(file)
      Clash.delete_all
      csv.each do |row|
          
          clash=Clash.create
          clash.team1=row[0]
          clash.goals1=Integer(row[1])
          clash.goals2=Integer(row[2])
          clash.team2=row[3]
          
          clash.tournament=row[4]
        
          clash.save
        end
      end
end