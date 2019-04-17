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

ActiveRecord::Schema.define(version: 2019_04_12_035656) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "check_in_records", force: :cascade do |t|
    t.bigint "employee_id"
    t.date "checked_in_date"
    t.datetime "checked_in_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_check_in_records_on_employee_id"
  end

  create_table "check_out_records", force: :cascade do |t|
    t.bigint "employee_id"
    t.date "checked_out_date"
    t.datetime "checked_out_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_check_out_records_on_employee_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
