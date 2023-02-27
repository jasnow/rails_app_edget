# typed: false
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

ActiveRecord::Schema[7.1].define(version: 2019_06_20_003739) do
  create_table "spell_books", force: :cascade do |t|
    t.string "name"
    t.integer "wizard_id"
    t.index ["wizard_id"], name: "index_spell_books_on_wizard_id"
  end

  create_table "wands", force: :cascade do |t|
    t.integer "wizard_id", null: false
    t.string "wood_type"
    t.integer "core_type"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["wizard_id"], name: "index_wands_on_wizard_id"
  end

  create_table "wizards", force: :cascade do |t|
    t.string "name"
    t.integer "house"
    t.string "parent_email"
    t.text "notes"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

end
