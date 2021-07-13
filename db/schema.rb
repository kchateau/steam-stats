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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_07_08_133125) do

  create_table "achievements", force: :cascade do |t|
    t.string "apiname"
  end

  create_table "friends", force: :cascade do |t|
    t.integer "steam_user_id"
    t.integer "friend_id"
    t.string "friend_since"
    t.index ["friend_id"], name: "index_friends_on_friend_id"
    t.index ["steam_user_id"], name: "index_friends_on_steam_user_id"
  end

  create_table "game_plays", force: :cascade do |t|
    t.integer "steam_user_id"
    t.integer "game_id"
    t.integer "playtime_forever"
    t.integer "playtime_2weeks"
    t.integer "playtime_windows_forever"
    t.integer "playtime_mac_forever"
    t.integer "playtime_linux_forever"
    t.index ["game_id"], name: "index_game_plays_on_game_id"
    t.index ["steam_user_id"], name: "index_game_plays_on_steam_user_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "appid"
    t.string "name"
  end

  create_table "player_achievements", force: :cascade do |t|
    t.integer "steam_user_id"
    t.integer "achievement_id"
    t.string "unlocktime"
    t.index ["achievement_id"], name: "index_player_achievements_on_achievement_id"
    t.index ["steam_user_id"], name: "index_player_achievements_on_steam_user_id"
  end

  create_table "steam_users", force: :cascade do |t|
    t.string "steam_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "steam_id"
    t.string "string"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "views", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_views_on_email", unique: true
    t.index ["reset_password_token"], name: "index_views_on_reset_password_token", unique: true
  end

end
