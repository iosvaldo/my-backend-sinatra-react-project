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

ActiveRecord::Schema.define(version: 2022_06_23_210731) do

  create_table "appointments", force: :cascade do |t|
    t.string "username"
    t.string "date"
    t.integer "service_id"
    t.integer "salon_id"
    t.integer "likes"
  end

  create_table "salons", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "phone_number"
  end

  create_table "services", force: :cascade do |t|
    t.string "service"
  end

end
