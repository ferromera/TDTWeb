namespace :db do
  desc "Borra a todos los de 61 con team = nil"
  task erase65: :environment do
      players=Player.all
      players.each do |p|
        if p.overallrating <= 65 and p.team==nil then
          p.delete
        end
      end
  end
end