require 'csv'    

namespace :db do
  desc "Carga los datos de goleadores"
  
  task loadStrikers: :environment do
      file = File.open("strikers.csv", "r:utf-8")
      csv = CSV.parse(file)
      Striker.delete_all
      csv.each do |row|
          
          striker=Striker.create
          striker.name=row[0]
          striker.goals=Integer(row[1])
          striker.team=row[2]
          striker.I=Integer(row[3])
          striker.II=Integer(row[4])
          striker.III=Integer(row[5])
          striker.IV=Integer(row[6])
          striker.V=Integer(row[7])
          striker.VI=Integer(row[8])
          striker.VII=Integer(row[9])
          striker.X=Integer(row[10])
          striker.XI=Integer(row[11])
          striker.XII=Integer(row[12])
          striker.XIII=Integer(row[13])
          striker.XIV=Integer(row[14])
          striker.XV=Integer(row[15])
          striker.XVI=Integer(row[16])
          
          striker.save
        end
      end
end