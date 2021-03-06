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

ActiveRecord::Schema.define(version: 2018_06_01_121704) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.text "content"
    t.bigint "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_answers_on_question_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
  end

  create_table "products", force: :cascade do |t|
    t.decimal "price"
    t.boolean "workout"
    t.boolean "wireless"
    t.integer "age"
    t.bigint "sub_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "kids"
    t.string "name"
    t.integer "stars"
    t.boolean "noiseisolation"
    t.boolean "noisecancellation"
    t.index ["sub_category_id"], name: "index_products_on_sub_category_id"
  end

  create_table "questions", force: :cascade do |t|
    t.text "content"
    t.bigint "quiz_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "answer_id"
    t.integer "parent_answer_id"
    t.index ["answer_id"], name: "index_questions_on_answer_id"
    t.index ["quiz_id"], name: "index_questions_on_quiz_id"
  end

  create_table "quiz_sessions", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "quiz_id"
    t.index ["quiz_id"], name: "index_quiz_sessions_on_quiz_id"
    t.index ["user_id"], name: "index_quiz_sessions_on_user_id"
  end

  create_table "quizzes", force: :cascade do |t|
    t.bigint "sub_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sub_category_id"], name: "index_quizzes_on_sub_category_id"
  end

  create_table "sub_categories", force: :cascade do |t|
    t.string "name"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "quiz_id"
    t.string "photo"
    t.index ["category_id"], name: "index_sub_categories_on_category_id"
    t.index ["quiz_id"], name: "index_sub_categories_on_quiz_id"
  end

  create_table "user_answers", force: :cascade do |t|
    t.bigint "answer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "quiz_session_id"
    t.index ["answer_id"], name: "index_user_answers_on_answer_id"
    t.index ["quiz_session_id"], name: "index_user_answers_on_quiz_session_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "answers", "questions"
  add_foreign_key "products", "sub_categories"
  add_foreign_key "questions", "quizzes"
  add_foreign_key "quiz_sessions", "quizzes"
  add_foreign_key "quiz_sessions", "users"
  add_foreign_key "quizzes", "sub_categories"
  add_foreign_key "sub_categories", "categories"
  add_foreign_key "user_answers", "answers"
  add_foreign_key "user_answers", "quiz_sessions"
end
