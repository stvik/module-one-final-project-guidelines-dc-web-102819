# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_11_12_200927) do

  create_table "jobs", force: :cascade do |t|
    t.string "name"
    t.integer "happiness_increment"
    t.integer "level"
    t.integer "money"
  end

  create_table "tasks", force: :cascade do |t|
    t.integer "job_id"
    t.string "description"
    t.integer "money"
    t.integer "happiness_increment"
  end

  create_table "user_jobs", force: :cascade do |t|
    t.integer "user_id"
    t.integer "job_id"
    t.boolean "current?", default: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "age", default: 18
    t.string "gender"
    t.integer "happiness", default: 5
    t.integer "money", default: 20000
  end

end
