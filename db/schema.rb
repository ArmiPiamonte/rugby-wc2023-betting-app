# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_09_18_142539) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "losers", force: :cascade do |t|
    t.bigint "team_id", null: false
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_losers_on_team_id"
  end

  create_table "matches", force: :cascade do |t|
    t.bigint "winner_id", null: false
    t.bigint "loser_id", null: false
    t.bigint "away_team_id", null: false
    t.bigint "home_team_id", null: false
    t.date "date"
    t.string "pool"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["away_team_id"], name: "index_matches_on_away_team_id"
    t.index ["home_team_id"], name: "index_matches_on_home_team_id"
    t.index ["loser_id"], name: "index_matches_on_loser_id"
    t.index ["winner_id"], name: "index_matches_on_winner_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "country"
    t.string "flag"
    t.integer "ranking"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "winners", force: :cascade do |t|
    t.bigint "team_id", null: false
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_winners_on_team_id"
  end

  add_foreign_key "losers", "teams"
  add_foreign_key "matches", "losers"
  add_foreign_key "matches", "teams", column: "away_team_id"
  add_foreign_key "matches", "teams", column: "home_team_id"
  add_foreign_key "matches", "winners"
  add_foreign_key "winners", "teams"
end
