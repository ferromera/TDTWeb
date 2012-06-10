require 'csv'    

namespace :db do
  desc "Llena los datos de jugadores"
   def to_boolean(value)   
   [true, 'true', 1, '1', 't'].include?(value.respond_to?(:downcase) ? value.downcase : value)  
  end
  task del_players: :environment do
    Player.delete_all
  end
  task fill_players: :environment do
    
    file = File.open("players3_2.csv", "r:ISO-8859-1")
    csv = CSV.parse(file)
    i=1
    csv.each do |row|
      player=Player.new
      player.pesPlayerId=row[0]
      player.name=row[1]
      player.nationality=row[2]
      player.club=row[3]
      player.registeredPosition=row[4]
      player.age=row[5]
      player.overallRating=row[6]
      player.techniqueRating=row[7]
      player.speedRating=row[8]
      player.physicalRating=row[9]
      player.resistanceRating=row[10]
      player.attack=row[11]
      player.defence=row[12]
      player.headerAccuracy=row[13]
      player.dribbleAccuracy=row[14]
      player.shortPassAccuracy=row[15]
      player.shortPassSpeed=row[16]
      player.longPassAccuracy=row[17]
      player.longPassSpeed=row[18]
      player.shotAccuracy=row[19]
      player.placeKicking=row[20]
      player.swerve=row[21]
      player.ballControl=row[22]
      player.goalKeepingSkills=row[23]
      player.response=row[24]
      player.explosivePower=row[25]
      player.dribbleSpeed=row[26]
      player.topSpeed=row[27]
      player.bodyBalance=row[28]
      player.stamina=row[29]
      player.kickingPower=row[30]
      player.jump=row[31]
      player.tenacity=row[32]
      player.teamwork=row[33]
      player.form=row[34]
      player.weakFootAccuracy=row[35]
      player.weakFootFrequency=row[36]
      player.attackAwareness=row[37]
      player.defenceAwareness=row[38]
      player.gk= to_boolean row[39]
      player.swp= to_boolean row[40]
      player.cb= to_boolean row[41]
      player.rb= to_boolean row[42]
      player.lb= to_boolean row[43]
      player.dmf= to_boolean row[44]
      player.cmf= to_boolean row[45]
      player.rmf= to_boolean row[46]
      player.lmf= to_boolean row[47]
      player.amf= to_boolean row[48]
      player.rwf= to_boolean row[49]
      player.lwf= to_boolean row[50]
      player.ss= to_boolean row[51]
      player.cf= to_boolean row[52]
      player.strongerFoot=row[53]
      player.injuryTolerance=row[54]
      player.s01OneTouchPlay= to_boolean row[55]
      player.s02OutsideCurve= to_boolean row[56]
      player.s03LongThrow= to_boolean row[57]
      player.s04SuperSub= to_boolean row[58]
      player.s05SpeedMerchant= to_boolean row[59]
      player.s06LongRangeDrive= to_boolean row[60]
      player.s07ShoulderFeintSkills= to_boolean row[61]
      player.s08TurningSkills= to_boolean row[62]
      player.s09RouletteSkills= to_boolean row[63]
      player.s10FlipFlapSkills= to_boolean row[64]
      player.s11FlickingSkills= to_boolean row[65]
      player.s12ScissorsSkills= to_boolean row[66]
      player.s13StepOnSkills= to_boolean row[67]
      player.s14SideSteppingSkills= to_boolean row[68]
      player.p01ClassicNo10= to_boolean row[69]
      player.p02AnchorMan= to_boolean row[70]
      player.p03Trickster= to_boolean row[71]
      player.p04DartingRun= to_boolean row[72]
      player.p05MazingRun= to_boolean row[73]
      player.p06PinpointPass= to_boolean row[74]
      player.p07EarlyCross= to_boolean row[75]
      player.p08BoxToBox= to_boolean row[76]
      player.p09IncisiveRun= to_boolean row[77]
      player.p10LongRanger= to_boolean row[78]
      player.p11Enforcer= to_boolean row[79]
      player.p12GoalPoacher= to_boolean row[80]
      player.p13DummyRunner= to_boolean row[81]
      player.p14FreeRoaming= to_boolean row[82]
      player.p15TailsMan= to_boolean row[83]
      player.p16FoxInTheBox= to_boolean row[84]
      player.p17OffensiveSideback= to_boolean row[85]
      player.p18TrackBack= to_boolean row[86]
      player.height=row[87]
      player.weight=row[88]
      
      i=i+1
      player.save
      puts "procesados #{i}"
    end
    
   
    
  end
end