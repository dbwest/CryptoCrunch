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

ActiveRecord::Schema.define(version: 20180210184450) do

  create_table "currencies", force: :cascade do |t|
    t.decimal "team_market_percent"
    t.date "ico_date"
    t.string "vertical"
    t.string "team"
    t.integer "team_rating"
    t.boolean "needs_blockchain"
    t.string "countries_ico_available"
    t.decimal "scam_sale_probability"
    t.string "smart_money_investors"
    t.integer "mining_difficulty"
    t.integer "arbitrage_activity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
