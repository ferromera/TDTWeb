require 'csv'    
require "#{Rails.root}/app/helpers/players_helper"
include PlayersHelper

namespace :db do
  desc "Llena los datos de jugadores"
   def to_boolean(value)   
   [true, 'true', 1, '1', 't'].include?(value.respond_to?(:downcase) ? value.downcase : value)  
  end

  task add_player: :environment do
    
    file = File.open("addPlayer.csv", "r:utf-8")
    csv = CSV.parse(file)
    i=1
    csv.each do |row|
      player=Player.new
      player.pesPlayerId=row[0]
      player.name=row[1].upcase
      #player.nationality=row[2]
      player.age=row[3]
      player.nationality=row[4]
      player.strongerFoot=row[5]
      player.height=row[6]
      player.weight=row[7]
      player.position=row[8]
      player.gk=row[9]
      player.cb=row[10]
      player.lb=row[11]
      player.rb=row[12]
      player.dmf=row[13]
      player.cmf=row[14]
      player.lmf=row[15]
      player.rmf=row[16]
      player.amf=row[17]
      player.lwf=row[18]
      player.rwf=row[19]
      player.ss=row[20]
      player.cf=row[21]
      player.attackingProwess=row[22]
      player.ballControl=row[23]
      player.dribbling=row[24]
      player.lowPass=row[25]
      player.loftedPass=row[26]
      player.finishing=row[27]
      player.placeKicking=row[28]
      player.controlledSpin=row[29]
      player.header=row[30]
      player.defensiveProwess=row[31]
      player.ballWinning=row[32]
      player.kickingPower=row[33]
      player.speed=row[34]
      player.explosivePower=row[35]
      player.bodyBalance=row[36]
      player.jump=row[37]
      player.goalkeeping=row[38]
      player.saving= row[39]
      player.tenacity= row[40]
      player.stamina= row[41]
      player.form= row[42]
      player.injuryTolerance=  row[43]
      player.weakFootUsage=  row[44]
      player.weakFootAccuracy=  row[45]
      #player.rmf= to_boolean row[46]
      player.trickster= to_boolean row[47]
      player.mazingRun= to_boolean row[48]
      player.speedingBullet= to_boolean row[49]
      player.incisiveRun= to_boolean row[50]
      player.longBallExpert= to_boolean row[51]
      player.earlyCross= to_boolean row[52]
      player.longRanger= to_boolean row[53]
      player.scissorsFeint= to_boolean row[54]
      player.flipFlap= to_boolean row[55]
      player.marseilleTurn= to_boolean row[56]
      player.sombrero= to_boolean row[57]
      player.preciseTouch= to_boolean row[58]
      player.longRangeDrive= to_boolean row[59]
      player.knuckleShot= to_boolean row[60]
      player.acrobaticFinishing= to_boolean row[61]
      player.firstTimeShot= to_boolean row[62]
      player.oneTouchPass= to_boolean row[63]
      player.weightedPass= to_boolean row[64]
      player.pinpointCrossing= to_boolean row[65]
      player.outsideCurler= to_boolean row[66]
      player.lowPuntTrajectory= to_boolean row[67]
      player.longThrow= to_boolean row[68]
      player.gkLongThrow= to_boolean row[69]
      player.manMarking= to_boolean row[70]
      player.trackBack= to_boolean row[71]
      player.captaincy= to_boolean row[72]
      player.superSub= to_boolean row[73]
      #player.p06PinpointPass= to_boolean row[74]
      #player.p07EarlyCross= to_boolean row[75]
      #player.p08BoxToBox= to_boolean row[76]
      #player.p09IncisiveRun= to_boolean row[77]
      #player.p10LongRanger= to_boolean row[78]
      #player.p11Enforcer= to_boolean row[79]
      #player.p12GoalPoacher= to_boolean row[80]
      #player.p13DummyRunner= to_boolean row[81]
      player.club=  row[82]
      player.overallrating= calculateOverall(player)


      
      player.save
      
      end
    end
    

end