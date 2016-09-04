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

ActiveRecord::Schema.define(version: 20160904032138) do

  create_table "battles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "year"
    t.integer  "battle_number"
    t.string   "attacker_king"
    t.string   "defender_king"
    t.string   "attacker_1"
    t.string   "attacker_2"
    t.string   "attacker_3"
    t.string   "attacker_4"
    t.string   "defender_1"
    t.string   "defender_2"
    t.string   "defender_3"
    t.string   "defender_4"
    t.string   "battle_outcome"
    t.string   "battle_type"
    t.integer  "major_deaths"
    t.integer  "major_capture"
    t.integer  "attacker_size"
    t.integer  "defender_size"
    t.string   "attacker_commander"
    t.string   "defender_commander"
    t.boolean  "summer"
    t.string   "location"
    t.string   "region"
    t.text     "note",               limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["battle_number"], name: "battle_number_UNIQUE", unique: true, using: :btree
    t.index ["name"], name: "index_battles_on_name", unique: true, using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
