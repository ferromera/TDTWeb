# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120620000854) do

  create_table "bids", :force => true do |t|
    t.integer  "bidder_id"
    t.integer  "offered_id"
    t.integer  "money"
    t.integer  "player_id"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "bids", ["bidder_id"], :name => "index_bids_on_bidder_id"
  add_index "bids", ["offered_id"], :name => "index_bids_on_offered_id"
  add_index "bids", ["player_id"], :name => "index_bids_on_player_id"

  create_table "microposts", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "microposts", ["user_id", "created_at"], :name => "index_microposts_on_user_id_and_created_at"

  create_table "news", :force => true do |t|
    t.string   "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "players", :force => true do |t|
    t.integer  "pesPlayerId"
    t.string   "name"
    t.string   "nationality"
    t.string   "club"
    t.string   "registeredPosition"
    t.integer  "age"
    t.integer  "overallRating"
    t.string   "techniqueRating"
    t.string   "speedRating"
    t.string   "physicalRating"
    t.string   "resistanceRating"
    t.integer  "attack"
    t.integer  "defence"
    t.integer  "headerAccuracy"
    t.integer  "dribbleAccuracy"
    t.integer  "shortPassAccuracy"
    t.integer  "shortPassSpeed"
    t.integer  "longPassAccuracy"
    t.integer  "longPassSpeed"
    t.integer  "shotAccuracy"
    t.integer  "placeKicking"
    t.integer  "swerve"
    t.integer  "ballControl"
    t.integer  "goalKeepingSkills"
    t.integer  "response"
    t.integer  "explosivePower"
    t.integer  "dribbleSpeed"
    t.integer  "topSpeed"
    t.integer  "bodyBalance"
    t.integer  "stamina"
    t.integer  "kickingPower"
    t.integer  "jump"
    t.integer  "tenacity"
    t.integer  "teamwork"
    t.integer  "form"
    t.integer  "weakFootAccuracy"
    t.integer  "weakFootFrequency"
    t.integer  "attackAwareness"
    t.integer  "defenceAwareness"
    t.boolean  "gk"
    t.boolean  "swp"
    t.boolean  "cb"
    t.boolean  "rb"
    t.boolean  "lb"
    t.boolean  "dmf"
    t.boolean  "cmf"
    t.boolean  "rmf"
    t.boolean  "lmf"
    t.boolean  "amf"
    t.boolean  "rwf"
    t.boolean  "lwf"
    t.boolean  "ss"
    t.boolean  "cf"
    t.string   "strongerFoot"
    t.string   "injuryTolerance"
    t.boolean  "s01OneTouchPlay"
    t.boolean  "s02OutsideCurve"
    t.boolean  "s03LongThrow"
    t.boolean  "s04SuperSub"
    t.boolean  "s05SpeedMerchant"
    t.boolean  "s06LongRangeDrive"
    t.boolean  "s07ShoulderFeintSkills"
    t.boolean  "s08TurningSkills"
    t.boolean  "s09RouletteSkills"
    t.boolean  "s10FlipFlapSkills"
    t.boolean  "s11FlickingSkills"
    t.boolean  "s12ScissorsSkills"
    t.boolean  "s13StepOnSkills"
    t.boolean  "s14SideSteppingSkills"
    t.boolean  "p01ClassicNo10"
    t.boolean  "p02AnchorMan"
    t.boolean  "p03Trickster"
    t.boolean  "p04DartingRun"
    t.boolean  "p05MazingRun"
    t.boolean  "p06PinpointPass"
    t.boolean  "p07EarlyCross"
    t.boolean  "p08BoxToBox"
    t.boolean  "p09IncisiveRun"
    t.boolean  "p10LongRanger"
    t.boolean  "p11Enforcer"
    t.boolean  "p12GoalPoacher"
    t.boolean  "p13DummyRunner"
    t.boolean  "p14FreeRoaming"
    t.boolean  "p15TailsMan"
    t.boolean  "p16FoxInTheBox"
    t.boolean  "p17OffensiveSideback"
    t.boolean  "p18TrackBack"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.integer  "team_id"
    t.integer  "height"
    t.integer  "weight"
  end

  add_index "players", ["age"], :name => "index_players_on_age"
  add_index "players", ["amf"], :name => "index_players_on_amf"
  add_index "players", ["attack"], :name => "index_players_on_attack"
  add_index "players", ["attackAwareness"], :name => "index_players_on_attackAwareness"
  add_index "players", ["ballControl"], :name => "index_players_on_ballControl"
  add_index "players", ["bodyBalance"], :name => "index_players_on_bodyBalance"
  add_index "players", ["cb"], :name => "index_players_on_cb"
  add_index "players", ["cf"], :name => "index_players_on_cf"
  add_index "players", ["club"], :name => "index_players_on_club"
  add_index "players", ["cmf"], :name => "index_players_on_cmf"
  add_index "players", ["defence"], :name => "index_players_on_defence"
  add_index "players", ["defenceAwareness"], :name => "index_players_on_defenceAwareness"
  add_index "players", ["dmf"], :name => "index_players_on_dmf"
  add_index "players", ["dribbleAccuracy"], :name => "index_players_on_dribbleAccuracy"
  add_index "players", ["dribbleSpeed"], :name => "index_players_on_dribbleSpeed"
  add_index "players", ["explosivePower"], :name => "index_players_on_explosivePower"
  add_index "players", ["form"], :name => "index_players_on_form"
  add_index "players", ["gk"], :name => "index_players_on_gk"
  add_index "players", ["goalKeepingSkills"], :name => "index_players_on_goalKeepingSkills"
  add_index "players", ["headerAccuracy"], :name => "index_players_on_headerAccuracy"
  add_index "players", ["injuryTolerance"], :name => "index_players_on_injuryTolerance"
  add_index "players", ["jump"], :name => "index_players_on_jump"
  add_index "players", ["kickingPower"], :name => "index_players_on_kickingPower"
  add_index "players", ["lb"], :name => "index_players_on_lb"
  add_index "players", ["lmf"], :name => "index_players_on_lmf"
  add_index "players", ["longPassAccuracy"], :name => "index_players_on_longPassAccuracy"
  add_index "players", ["longPassSpeed"], :name => "index_players_on_longPassSpeed"
  add_index "players", ["lwf"], :name => "index_players_on_lwf"
  add_index "players", ["name"], :name => "index_players_on_name"
  add_index "players", ["nationality"], :name => "index_players_on_nationality"
  add_index "players", ["overallRating"], :name => "index_players_on_overallRating"
  add_index "players", ["p01ClassicNo10"], :name => "index_players_on_p01ClassicNo10"
  add_index "players", ["p02AnchorMan"], :name => "index_players_on_p02AnchorMan"
  add_index "players", ["p03Trickster"], :name => "index_players_on_p03Trickster"
  add_index "players", ["p04DartingRun"], :name => "index_players_on_p04DartingRun"
  add_index "players", ["p05MazingRun"], :name => "index_players_on_p05MazingRun"
  add_index "players", ["p06PinpointPass"], :name => "index_players_on_p06PinpointPass"
  add_index "players", ["p07EarlyCross"], :name => "index_players_on_p07EarlyCross"
  add_index "players", ["p08BoxToBox"], :name => "index_players_on_p08BoxToBox"
  add_index "players", ["p09IncisiveRun"], :name => "index_players_on_p09IncisiveRun"
  add_index "players", ["p10LongRanger"], :name => "index_players_on_p10LongRanger"
  add_index "players", ["p11Enforcer"], :name => "index_players_on_p11Enforcer"
  add_index "players", ["p12GoalPoacher"], :name => "index_players_on_p12GoalPoacher"
  add_index "players", ["p13DummyRunner"], :name => "index_players_on_p13DummyRunner"
  add_index "players", ["p14FreeRoaming"], :name => "index_players_on_p14FreeRoaming"
  add_index "players", ["p15TailsMan"], :name => "index_players_on_p15TailsMan"
  add_index "players", ["p16FoxInTheBox"], :name => "index_players_on_p16FoxInTheBox"
  add_index "players", ["p17OffensiveSideback"], :name => "index_players_on_p17OffensiveSideback"
  add_index "players", ["p18TrackBack"], :name => "index_players_on_p18TrackBack"
  add_index "players", ["physicalRating"], :name => "index_players_on_physicalRating"
  add_index "players", ["placeKicking"], :name => "index_players_on_placeKicking"
  add_index "players", ["rb"], :name => "index_players_on_rb"
  add_index "players", ["registeredPosition"], :name => "index_players_on_registeredPosition"
  add_index "players", ["resistanceRating"], :name => "index_players_on_resistanceRating"
  add_index "players", ["response"], :name => "index_players_on_response"
  add_index "players", ["rmf"], :name => "index_players_on_rmf"
  add_index "players", ["rwf"], :name => "index_players_on_rwf"
  add_index "players", ["s01OneTouchPlay"], :name => "index_players_on_s01OneTouchPlay"
  add_index "players", ["s02OutsideCurve"], :name => "index_players_on_s02OutsideCurve"
  add_index "players", ["s03LongThrow"], :name => "index_players_on_s03LongThrow"
  add_index "players", ["s04SuperSub"], :name => "index_players_on_s04SuperSub"
  add_index "players", ["s05SpeedMerchant"], :name => "index_players_on_s05SpeedMerchant"
  add_index "players", ["s06LongRangeDrive"], :name => "index_players_on_s06LongRangeDrive"
  add_index "players", ["s07ShoulderFeintSkills"], :name => "index_players_on_s07ShoulderFeintSkills"
  add_index "players", ["s08TurningSkills"], :name => "index_players_on_s08TurningSkills"
  add_index "players", ["s09RouletteSkills"], :name => "index_players_on_s09RouletteSkills"
  add_index "players", ["s10FlipFlapSkills"], :name => "index_players_on_s10FlipFlapSkills"
  add_index "players", ["s11FlickingSkills"], :name => "index_players_on_s11FlickingSkills"
  add_index "players", ["s12ScissorsSkills"], :name => "index_players_on_s12ScissorsSkills"
  add_index "players", ["s13StepOnSkills"], :name => "index_players_on_s13StepOnSkills"
  add_index "players", ["s14SideSteppingSkills"], :name => "index_players_on_s14SideSteppingSkills"
  add_index "players", ["shortPassAccuracy"], :name => "index_players_on_shortPassAccuracy"
  add_index "players", ["shortPassSpeed"], :name => "index_players_on_shortPassSpeed"
  add_index "players", ["shotAccuracy"], :name => "index_players_on_shotAccuracy"
  add_index "players", ["speedRating"], :name => "index_players_on_speedRating"
  add_index "players", ["ss"], :name => "index_players_on_ss"
  add_index "players", ["stamina"], :name => "index_players_on_stamina"
  add_index "players", ["strongerFoot"], :name => "index_players_on_strongerFoot"
  add_index "players", ["swerve"], :name => "index_players_on_swerve"
  add_index "players", ["swp"], :name => "index_players_on_swp"
  add_index "players", ["teamwork"], :name => "index_players_on_teamwork"
  add_index "players", ["techniqueRating"], :name => "index_players_on_techniqueRating"
  add_index "players", ["tenacity"], :name => "index_players_on_tenacity"
  add_index "players", ["topSpeed"], :name => "index_players_on_topSpeed"
  add_index "players", ["weakFootAccuracy"], :name => "index_players_on_weakFootAccuracy"
  add_index "players", ["weakFootFrequency"], :name => "index_players_on_weakFootFrequency"

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",                                                 :null => false
    t.datetime "updated_at",                                                 :null => false
    t.integer  "user_id"
    t.integer  "money",      :default => 300000000
    t.string   "emblem",     :default => "/assets/teams/default_emblem.png"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "lastname"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           :default => false
    t.boolean  "authorization",   :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
