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

ActiveRecord::Schema.define(version: 2022_02_07_184526) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "man_hours", force: :cascade do |t|
    t.datetime "date", precision: 6, null: false
    t.integer "max", null: false
    t.integer "planned_absences", null: false
    t.integer "unplanned_absences", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sprint_data", force: :cascade do |t|
    t.datetime "date", precision: 6, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "sprint_id"
    t.index ["sprint_id"], name: "index_sprint_data_on_sprint_id"
  end

  create_table "sprint_data_column_definitions", force: :cascade do |t|
    t.string "name"
    t.integer "position"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sprint_data_columns", force: :cascade do |t|
    t.bigint "sprint_data_id"
    t.integer "ticket_count", default: 0, null: false
    t.integer "story_points", default: 0, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "sprint_data_column_definition_id"
    t.index ["sprint_data_column_definition_id"], name: "index_sprint_data_columns_on_sprint_data_column_definition_id"
    t.index ["sprint_data_id"], name: "index_sprint_data_columns_on_sprint_data_id"
  end

  create_table "sprints", force: :cascade do |t|
    t.string "iteration_id", null: false
    t.string "name", null: false
    t.string "description", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "start_time", precision: 6
    t.datetime "end_time", precision: 6
    t.jsonb "member_data", default: "--- {}\n", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: 6
    t.datetime "remember_created_at", precision: 6
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at", precision: 6
    t.datetime "last_sign_in_at", precision: 6
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at", precision: 6
    t.datetime "confirmation_sent_at", precision: 6
    t.string "unconfirmed_email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "sprint_data", "sprints"
end
