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

ActiveRecord::Schema.define(version: 20160824075641) do

  create_table "diys", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string  "title",   limit: 600, null: false
    t.string  "comment", limit: 600
    t.string  "url",     limit: 600, null: false
    t.integer "price",               null: false
  end

  create_table "genres", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invoices", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.integer "user_id",                          null: false
    t.integer "venue_id",                         null: false
    t.string  "title",               limit: 200
    t.string  "body",                limit: 2000
    t.bigint  "total_amount"
    t.integer "number_of_attendees"
  end

  create_table "messages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string  "content", limit: 600
    t.integer "user_id",             null: false
  end

  create_table "reviews", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.integer  "user_id",                      null: false
    t.integer  "venue_id",                     null: false
    t.integer  "score_total"
    t.integer  "score_cost"
    t.integer  "score_venue"
    t.integer  "score_mc"
    t.integer  "score_food"
    t.integer  "score_staff"
    t.integer  "score_location"
    t.string   "title",          limit: 200
    t.text     "body",           limit: 65535
    t.datetime "visited_on"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "nickname", limit: 200
    t.integer  "gender",               null: false
    t.datetime "birthday",             null: false
  end

  create_table "venue_genres", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string "name", limit: 600, null: false
    t.string "url",  limit: 600, null: false
  end

  create_table "venue_images", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.integer "venue_id",             null: false
    t.string  "path",     limit: 200
  end

  create_table "venues", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.integer "pref_id",                     null: false
    t.integer "area_id",                     null: false
    t.string  "name",           limit: 600,  null: false
    t.string  "ruby",           limit: 600,  null: false
    t.string  "title",          limit: 200
    t.string  "description",    limit: 2000
    t.string  "zip_code",       limit: 20
    t.string  "address",        limit: 200
    t.integer "score_total"
    t.integer "score_cost"
    t.integer "score_venue"
    t.integer "score_mc"
    t.integer "score_food"
    t.integer "score_staff"
    t.integer "score_location"
    t.integer "venue_genre_id"
    t.string  "image_type",     limit: 600
  end

end
