require 'csv'    

namespace :db do
  desc "Actualiza los datos de jugadores"
   def to_boolean(value)   
   [true, 'true', 1, '1', 't'].include?(value.respond_to?(:downcase) ? value.downcase : value)  
  end

  task update_players: :environment do
    updated= Hash.new
    file = File.open("players2013_2.5.csv", "r:utf-8")
    csv = CSV.parse(file)
    i=1
    csv.each do |row|
      player=Player.find_by_pesPlayerId(row[0]);
      if player == nil then
        player=Player.new
      end
      player.pesPlayerId=row[0]
      player.name=row[1]
      player.nationality=row[2]
      if( player.team_id==nil ) then
        player.club=row[3]
      end
      player.position=row[4]
      player.age=row[5]
      player.overallrating=row[6]
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
      player.s15KnuckleShot= to_boolean row[69]
      player.s16JumpingVolley= to_boolean row[70]
      player.s17ScissorKick= to_boolean row[71]
      player.s18HeelFlick= to_boolean row[72]
      player.s19WeightedPass= to_boolean row[73]
      player.s20DoubleTouch= to_boolean row[74]
      player.s21RunAround= to_boolean row[75]
      player.s22Sombrero= to_boolean row[76]
      player.s23180Drag= to_boolean row[77]
      player.s24LungingTackle= to_boolean row[78]
      player.s25DivingHeader= to_boolean row[79]
      player.s26GKLongThrow= to_boolean row[80]  
      player.p01ClassicNo10= to_boolean row[81]
      player.p02AnchorMan= to_boolean row[82]
      player.p03Trickster= to_boolean row[83]
      player.p04DartingRun= to_boolean row[84]
      player.p05MazingRun= to_boolean row[85]
      player.p06PinpointPass= to_boolean row[86]
      player.p07EarlyCross= to_boolean row[87]
      player.p08BoxToBox= to_boolean row[88]
      player.p09IncisiveRun= to_boolean row[89]
      player.p10LongRanger= to_boolean row[90]
      player.p11Enforcer= to_boolean row[91]
      player.p12GoalPoacher= to_boolean row[92]
      player.p13DummyRunner= to_boolean row[93]
      player.p14FreeRoaming= to_boolean row[94]
      player.p15TailsMan= to_boolean row[95]
      player.p16FoxInTheBox= to_boolean row[96]
      player.p17OffensiveSideback= to_boolean row[97]
      player.p18TrackBack= to_boolean row[98]
      player.height=row[99]
      player.weight=row[100]
      
      i=i+1
      player.save
      updated[player.pesPlayerId]=true
      puts "procesados #{i}"
    end
    puts "deleting obsolete players ..."
    players=Player.all
    for i in 0..players.length - 1 do
      if !updated.has_key?(players[i].pesPlayerId) then
        players[i].destroy
      end
    end
   
  end
end