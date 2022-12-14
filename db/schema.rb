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

ActiveRecord::Schema[7.0].define(version: 2022_12_13_152509) do
  create_table "activities", force: :cascade do |t|
    t.integer "activity_code"
    t.string "name"
    t.string "type"
    t.float "percent_complete"
    t.integer "subcontractor_id"
    t.integer "location_id"
    t.integer "cost_id"
    t.date "start_date"
    t.date "end_date"
    t.string "category_1"
    t.string "category_2"
    t.boolean "completed"
  end

  create_table "cost_schedules", force: :cascade do |t|
    t.integer "cost_id"
    t.string "schedule_type"
    t.float "previous_cost"
    t.float "december"
    t.float "january"
    t.float "february"
    t.float "march"
    t.float "april"
    t.float "may"
    t.float "june"
    t.float "july"
    t.float "august"
    t.float "september"
    t.float "october"
  end

  create_table "costs", force: :cascade do |t|
    t.string "cost_code"
    t.string "name"
    t.float "quantity"
    t.string "unit_of_measure"
    t.float "manhours"
    t.float "forecast"
    t.float "spent_to_date"
    t.float "quantity_to_date"
    t.float "manhours_to_date"
    t.string "cost_category"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
  end

  create_table "subcontractors", force: :cascade do |t|
    t.string "name"
  end

end
