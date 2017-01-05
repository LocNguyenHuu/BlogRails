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

ActiveRecord::Schema.define(version: 20170103153738) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "Comments", primary_key: "ComentID", id: :integer, force: :cascade do |t|
    t.text    "Comment"
    t.integer "CommenterID"
    t.date    "CommentDate"
    t.integer "Deleted"
  end

  create_table "PostDetails", primary_key: "PostDetailID", id: :integer, force: :cascade do |t|
    t.text    "PostText"
    t.integer "PostID"
  end

  create_table "Posts", primary_key: "PostID", id: :integer, force: :cascade do |t|
    t.string  "PostTitle", limit: 1
    t.date    "PostDate"
    t.integer "Deleted"
    t.integer "OwnerID"
    t.index ["OwnerID"], name: "Posts_OwnerID_key", unique: true, using: :btree
  end

  create_table "Users", primary_key: "UserID", id: :integer, force: :cascade do |t|
    t.string  "UserName",   limit: 1
    t.string  "UserEmail",  limit: 1
    t.date    "CreateDate"
    t.integer "Active"
    t.index ["UserID"], name: "Users_UserID_key", unique: true, using: :btree
  end

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string   "Comment"
    t.integer  "CommenterID"
    t.date     "CommentDate"
    t.integer  "Deleted"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "post_details", force: :cascade do |t|
    t.string   "PostText"
    t.integer  "PostID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "PostTitle"
    t.date     "PostDate"
    t.integer  "Deleted"
    t.integer  "OwnerID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "UserName"
    t.string   "UserEmail"
    t.date     "CreateDate"
    t.integer  "Active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "Comments", "\"Users\"", column: "CommenterID", primary_key: "UserID", name: "FK_userID"
  add_foreign_key "PostDetails", "\"Posts\"", column: "PostID", primary_key: "PostID", name: "detail_fk"
  add_foreign_key "Users", "\"Posts\"", column: "UserID", primary_key: "OwnerID", name: "FK"
end
