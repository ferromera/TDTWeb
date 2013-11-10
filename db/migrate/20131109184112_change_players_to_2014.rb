class ChangePlayersTo2014 < ActiveRecord::Migration
  def change
        
    remove_column :players, :techniqueRating
    remove_column :players, :speedRating
    remove_column :players, :physicalRating
    remove_column :players, :resistanceRating
    remove_column :players, :attack
    remove_column :players, :defence
    remove_column :players, :headerAccuracy
    remove_column :players, :dribbleAccuracy
    remove_column :players, :shortPassAccuracy
    remove_column :players, :shortPassSpeed
    remove_column :players, :longPassAccuracy
    remove_column :players, :longPassSpeed
    remove_column :players, :shotAccuracy
    remove_column :players, :placeKicking
    remove_column :players, :swerve
    remove_column :players, :ballControl
    remove_column :players, :goalKeepingSkills
    remove_column :players, :response
    remove_column :players, :explosivePower
    remove_column :players, :dribbleSpeed
    remove_column :players, :topSpeed
    remove_column :players, :bodyBalance
    remove_column :players, :stamina
    remove_column :players, :kickingPower
    remove_column :players, :jump
    remove_column :players, :tenacity
    remove_column :players, :teamwork
   
    remove_column :players, :weakFootFrequency
    remove_column :players, :attackAwareness
    remove_column :players, :defenceAwareness
    
    remove_column :players, :gk
    remove_column :players, :swp
    remove_column :players, :cb
    remove_column :players, :rb
    remove_column :players, :lb
    remove_column :players, :dmf
    remove_column :players, :cmf
    remove_column :players, :rmf
    remove_column :players, :lmf
    remove_column :players, :amf
    remove_column :players, :rwf
    remove_column :players, :lwf
    remove_column :players, :ss
    remove_column :players, :cf
    

    remove_column :players, :s01OneTouchPlay
    remove_column :players, :s02OutsideCurve
    remove_column :players, :s03LongThrow
    remove_column :players, :s04SuperSub
    remove_column :players, :s05SpeedMerchant
    remove_column :players, :s06LongRangeDrive
    remove_column :players, :s07ShoulderFeintSkills
    remove_column :players, :s08TurningSkills
    remove_column :players, :s09RouletteSkills
    remove_column :players, :s10FlipFlapSkills
    remove_column :players, :s11FlickingSkills
    remove_column :players, :s12ScissorsSkills
    remove_column :players, :s13StepOnSkills
    remove_column :players, :s14SideSteppingSkills
    remove_column :players, :s15KnuckleShot
    remove_column :players, :s16JumpingVolley
    remove_column :players, :s17ScissorKick
    remove_column :players, :s18HeelFlick
    remove_column :players, :s19WeightedPass
    remove_column :players, :s20DoubleTouch
    remove_column :players, :s21RunAround
    remove_column :players, :s22Sombrero
    remove_column :players, :s23180Drag
    remove_column :players, :s24LungingTackle
    remove_column :players, :s25DivingHeader
    remove_column :players, :s26GKLongThrow
    remove_column :players, :p01ClassicNo10
    remove_column :players, :p02AnchorMan
    remove_column :players, :p03Trickster
    remove_column :players, :p04DartingRun
    remove_column :players, :p05MazingRun
    remove_column :players, :p06PinpointPass
    remove_column :players, :p07EarlyCross
    remove_column :players, :p08BoxToBox
    remove_column :players, :p09IncisiveRun
    remove_column :players, :p10LongRanger
    remove_column :players, :p11Enforcer
    remove_column :players, :p12GoalPoacher
    remove_column :players, :p13DummyRunner
    remove_column :players, :p14FreeRoaming
    remove_column :players, :p15TailsMan
    remove_column :players, :p16FoxInTheBox
    remove_column :players, :p17OffensiveSideback
    remove_column :players, :p18TrackBack
    
####################################################################

    #team

    #pesPlayerId
    #name
    #age
    #nationality
    #strongerFoot
    #height
    #weight
    #position

    add_column :players , :gk, :string
    add_column :players , :cb, :string
    add_column :players , :lb, :string
    add_column :players , :rb, :string
    add_column :players , :dmf, :string
    add_column :players , :cmf, :string
    add_column :players , :amf, :string
    add_column :players , :lmf, :string
    add_column :players , :rmf, :string
    add_column :players , :ss, :string
    add_column :players , :cf, :string
    add_column :players , :rwf, :string
    add_column :players , :lwf, :string
    
    add_column :players , :attackingProwess, :integer
    add_column :players , :ballControl, :integer
    add_column :players , :dribbling, :integer
    add_column :players , :lowPass, :integer
    add_column :players , :loftedPass, :integer
    add_column :players , :finishing, :integer
    add_column :players , :placeKicking, :integer
    add_column :players , :controlledSpin, :integer
    add_column :players , :header, :integer
    add_column :players , :defensiveProwess, :integer
    add_column :players , :ballWinning, :integer
    add_column :players , :kickingPower, :integer
    add_column :players , :speed, :integer
    add_column :players , :explosivePower, :integer
    add_column :players , :bodyBalance, :integer
    add_column :players , :jump, :integer
    add_column :players , :goalkeeping, :integer
    add_column :players , :saving, :integer
    add_column :players , :tenacity, :integer
    add_column :players , :stamina, :integer
    
    #form
    #injuryTolerance
    add_column :players , :weakFootUsage, :integer
    #weakFootAccuracy
    
    add_column :players , :trickster, :boolean
    add_column :players , :mazingRun, :boolean
    add_column :players , :speedingBullet, :boolean
    add_column :players , :incisiveRun, :boolean
    add_column :players , :longBallExpert, :boolean
    add_column :players , :earlyCross, :boolean
    add_column :players , :longRanger, :boolean
    
    add_column :players , :scissorsFeint, :boolean
    add_column :players , :flipFlap, :boolean
    add_column :players , :marseilleTurn, :boolean
    add_column :players , :sombrero, :boolean
    add_column :players , :preciseTouch, :boolean
    add_column :players , :longRangeDrive, :boolean
    add_column :players , :knuckleShot, :boolean
    add_column :players , :acrobaticFinishing, :boolean
    add_column :players , :firstTimeShot, :boolean
    add_column :players , :oneTouchPass, :boolean
    add_column :players , :weightedPass, :boolean
    add_column :players , :pinpointCrossing, :boolean
    add_column :players , :outsideCurler, :boolean
    add_column :players , :lowPuntTrajectory, :boolean
    add_column :players , :longThrow, :boolean
    add_column :players , :gkLongThrow, :boolean
    add_column :players , :manMarking, :boolean
    add_column :players , :trackBack, :boolean
    add_column :players , :captaincy, :boolean
    add_column :players , :superSub, :boolean
    #club
    #overallrating

    
  end
end
