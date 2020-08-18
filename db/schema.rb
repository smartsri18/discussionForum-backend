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

ActiveRecord::Schema.define(version: 2020_08_18_082715) do

  create_table "associated_labels", force: :cascade do |t|
    t.integer "issue_id", null: false
    t.integer "label_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["issue_id", "label_id"], name: "index_associated_labels_on_issue_id_and_label_id", unique: true
    t.index ["issue_id"], name: "index_associated_labels_on_issue_id"
    t.index ["label_id"], name: "index_associated_labels_on_label_id"
  end

  create_table "associated_projects", force: :cascade do |t|
    t.integer "issue_id", null: false
    t.integer "project_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["issue_id", "project_id"], name: "index_associated_projects_on_issue_id_and_project_id", unique: true
    t.index ["issue_id"], name: "index_associated_projects_on_issue_id"
    t.index ["project_id"], name: "index_associated_projects_on_project_id"
  end

  create_table "comments", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "issue_id", null: false
    t.text "message", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["issue_id"], name: "index_comments_on_issue_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "issues", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "title", null: false
    t.text "context", null: false
    t.integer "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_issues_on_user_id"
  end

  create_table "labels", force: :cascade do |t|
    t.string "name", null: false
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_labels_on_name", unique: true
  end

  create_table "projects", force: :cascade do |t|
    t.string "name", null: false
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_projects_on_name", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "github_username", null: false
    t.string "github_url", null: false
    t.string "email", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["github_username"], name: "index_users_on_github_username", unique: true
  end

  add_foreign_key "associated_labels", "issues"
  add_foreign_key "associated_labels", "labels"
  add_foreign_key "associated_projects", "issues"
  add_foreign_key "associated_projects", "projects"
  add_foreign_key "comments", "issues"
  add_foreign_key "comments", "users"
  add_foreign_key "issues", "users"
end
