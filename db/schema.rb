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

ActiveRecord::Schema.define(version: 2019_03_01_215146) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "affiliates", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pillars", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pillars_posts", force: :cascade do |t|
    t.bigint "pillar_id"
    t.bigint "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pillar_id"], name: "index_pillars_posts_on_pillar_id"
    t.index ["post_id"], name: "index_pillars_posts_on_post_id"
  end

  create_table "pillars_tasks", force: :cascade do |t|
    t.bigint "pillar_id"
    t.bigint "task_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pillar_id"], name: "index_pillars_tasks_on_pillar_id"
    t.index ["task_id"], name: "index_pillars_tasks_on_task_id"
  end

  create_table "pillars_topics", force: :cascade do |t|
    t.bigint "topic_id"
    t.bigint "pillar_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pillar_id"], name: "index_pillars_topics_on_pillar_id"
    t.index ["topic_id"], name: "index_pillars_topics_on_topic_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts_tasks", force: :cascade do |t|
    t.bigint "post_id"
    t.bigint "task_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_posts_tasks_on_post_id"
    t.index ["task_id"], name: "index_posts_tasks_on_task_id"
  end

  create_table "posts_topics", force: :cascade do |t|
    t.bigint "post_id"
    t.bigint "topic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_posts_topics_on_post_id"
    t.index ["topic_id"], name: "index_posts_topics_on_topic_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks_topics", force: :cascade do |t|
    t.bigint "task_id"
    t.bigint "topic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["task_id"], name: "index_tasks_topics_on_task_id"
    t.index ["topic_id"], name: "index_tasks_topics_on_topic_id"
  end

  create_table "topics", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "pillars_posts", "pillars"
  add_foreign_key "pillars_posts", "posts"
  add_foreign_key "pillars_tasks", "pillars"
  add_foreign_key "pillars_tasks", "tasks"
  add_foreign_key "pillars_topics", "pillars"
  add_foreign_key "pillars_topics", "topics"
  add_foreign_key "posts_tasks", "posts"
  add_foreign_key "posts_tasks", "tasks"
  add_foreign_key "posts_topics", "posts"
  add_foreign_key "posts_topics", "topics"
  add_foreign_key "tasks_topics", "tasks"
  add_foreign_key "tasks_topics", "topics"
end
