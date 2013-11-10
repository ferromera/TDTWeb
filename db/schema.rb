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

ActiveRecord::Schema.define(:version => 20131110053631) do

  create_table "bids", :force => true do |t|
    t.integer   "bidder_id"
    t.integer   "offered_id"
    t.integer   "money"
    t.integer   "player_id"
    t.string    "description"
    t.timestamp "created_at",                     :null => false
    t.timestamp "updated_at",                     :null => false
    t.boolean   "hasBeenRead", :default => false
    t.boolean   "refused",     :default => false
    t.boolean   "readrefused", :default => false
  end

  add_index "bids", ["bidder_id"], :name => "index_bids_on_bidder_id"
  add_index "bids", ["offered_id"], :name => "index_bids_on_offered_id"
  add_index "bids", ["player_id"], :name => "index_bids_on_player_id"

  create_table "clashes", :force => true do |t|
    t.string   "team1"
    t.string   "team2"
    t.integer  "goals1"
    t.integer  "goals2"
    t.string   "tournament"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "microposts", :force => true do |t|
    t.string    "content"
    t.integer   "user_id"
    t.timestamp "created_at", :null => false
    t.timestamp "updated_at", :null => false
  end

  add_index "microposts", ["user_id", "created_at"], :name => "index_microposts_on_user_id_and_created_at"

  create_table "news", :force => true do |t|
    t.string    "content"
    t.timestamp "created_at", :null => false
    t.timestamp "updated_at", :null => false
  end

  create_table "players", :force => true do |t|
    t.integer  "pesPlayerId"
    t.string   "name"
    t.string   "nationality"
    t.string   "club"
    t.string   "position"
    t.integer  "age"
    t.integer  "overallrating"
    t.integer  "form"
    t.integer  "weakFootAccuracy"
    t.string   "strongerFoot"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
    t.integer  "team_id"
    t.integer  "height"
    t.integer  "weight"
    t.integer  "dorsal"
    t.string   "x",                  :default => "0"
    t.string   "y",                  :default => "0"
    t.string   "alignmentpos",       :default => ""
    t.string   "gk"
    t.string   "cb"
    t.string   "lb"
    t.string   "rb"
    t.string   "dmf"
    t.string   "cmf"
    t.string   "amf"
    t.string   "lmf"
    t.string   "rmf"
    t.string   "ss"
    t.string   "cf"
    t.string   "rwf"
    t.string   "lwf"
    t.integer  "attackingProwess"
    t.integer  "ballControl"
    t.integer  "dribbling"
    t.integer  "lowPass"
    t.integer  "loftedPass"
    t.integer  "finishing"
    t.integer  "placeKicking"
    t.integer  "controlledSpin"
    t.integer  "header"
    t.integer  "defensiveProwess"
    t.integer  "ballWinning"
    t.integer  "kickingPower"
    t.integer  "speed"
    t.integer  "explosivePower"
    t.integer  "bodyBalance"
    t.integer  "jump"
    t.integer  "goalkeeping"
    t.integer  "saving"
    t.integer  "tenacity"
    t.integer  "stamina"
    t.integer  "weakFootUsage"
    t.boolean  "trickster"
    t.boolean  "mazingRun"
    t.boolean  "speedingBullet"
    t.boolean  "incisiveRun"
    t.boolean  "longBallExpert"
    t.boolean  "earlyCross"
    t.boolean  "longRanger"
    t.boolean  "scissorsFeint"
    t.boolean  "flipFlap"
    t.boolean  "marseilleTurn"
    t.boolean  "sombrero"
    t.boolean  "preciseTouch"
    t.boolean  "longRangeDrive"
    t.boolean  "knuckleShot"
    t.boolean  "acrobaticFinishing"
    t.boolean  "firstTimeShot"
    t.boolean  "oneTouchPass"
    t.boolean  "weightedPass"
    t.boolean  "pinpointCrossing"
    t.boolean  "outsideCurler"
    t.boolean  "lowPuntTrajectory"
    t.boolean  "longThrow"
    t.boolean  "gkLongThrow"
    t.boolean  "manMarking"
    t.boolean  "trackBack"
    t.boolean  "captaincy"
    t.boolean  "superSub"
    t.integer  "injuryTolerance"
  end

  add_index "players", ["age"], :name => "index_players_on_age"
  add_index "players", ["club"], :name => "index_players_on_club"
  add_index "players", ["form"], :name => "index_players_on_form"
  add_index "players", ["name"], :name => "index_players_on_name"
  add_index "players", ["nationality"], :name => "index_players_on_nationality"
  add_index "players", ["overallrating"], :name => "index_players_on_overallRating"
  add_index "players", ["position"], :name => "index_players_on_registeredPosition"
  add_index "players", ["strongerFoot"], :name => "index_players_on_strongerFoot"
  add_index "players", ["weakFootAccuracy"], :name => "index_players_on_weakFootAccuracy"

  create_table "standings", :force => true do |t|
    t.string   "teamname"
    t.integer  "played"
    t.integer  "won"
    t.integer  "draw"
    t.integer  "lost"
    t.integer  "goalsfor"
    t.integer  "goalsagainst"
    t.integer  "points"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "tournament_id"
    t.integer  "prize"
    t.integer  "position"
  end

  create_table "strikers", :force => true do |t|
    t.string   "name"
    t.string   "team"
    t.integer  "goals"
    t.integer  "I"
    t.integer  "II"
    t.integer  "III"
    t.integer  "IV"
    t.integer  "V"
    t.integer  "VI"
    t.integer  "VII"
    t.integer  "X"
    t.integer  "XI"
    t.integer  "XII"
    t.integer  "XIII"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "XIV"
    t.integer  "XV"
    t.integer  "XVI"
  end

  create_table "teams", :force => true do |t|
    t.string    "name"
    t.timestamp "created_at",                                                          :null => false
    t.timestamp "updated_at",                                                          :null => false
    t.integer   "user_id"
    t.integer   "money",               :default => 300000000
    t.string    "emblem_file_name"
    t.string    "emblem_content_type"
    t.integer   "emblem_file_size"
    t.timestamp "emblem_updated_at"
    t.string    "emblem",              :default => "/assets/teams/default_emblem.png"
    t.boolean   "unreadNews",          :default => false
  end

  create_table "tournaments", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "winner"
    t.string   "scorer"
  end

  create_table "users", :force => true do |t|
    t.string    "name"
    t.string    "email"
    t.string    "lastname"
    t.timestamp "created_at",                         :null => false
    t.timestamp "updated_at",                         :null => false
    t.string    "password_digest"
    t.string    "remember_token"
    t.boolean   "admin",           :default => false
    t.boolean   "authorization",   :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
