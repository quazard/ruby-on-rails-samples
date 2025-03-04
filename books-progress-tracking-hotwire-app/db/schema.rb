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

ActiveRecord::Schema[7.1].define(version: 2024_05_23_163448) do
  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.integer "pages"
    t.date "published"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index "lower(title)", name: "index_books_on_lower_title", unique: true
  end

  create_table "read_runs", force: :cascade do |t|
    t.integer "run_number"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "book_id"
    t.index ["book_id", "run_number"], name: "index_read_runs_on_book_id_and_run_number", unique: true
    t.index ["book_id"], name: "index_read_runs_on_book_id"
  end

  create_table "read_sessions", force: :cascade do |t|
    t.integer "read_pages"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "read_run_id"
    t.index ["read_run_id"], name: "index_read_sessions_on_read_run_id"
  end

end
