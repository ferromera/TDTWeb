namespace :db do
  desc "Borra a todos los de 61 con team = nil"
  task erase61: :environment do
      players=Player.find_all_by_overallrating(61)
      players.each do |p|
        if p.team==nil then
          p.delete
        end
      end
  end
end