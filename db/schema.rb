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

ActiveRecord::Schema.define(version: 20170508111235) do

  create_table "alumns", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.string   "gender"
    t.date     "birth_date"
    t.string   "registry"
    t.string   "password_digest"
    t.string   "authorization_token"
    t.string   "shift"
    t.integer  "quantity_suspensions_days"
    t.integer  "parent_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["parent_id"], name: "index_alumns_on_parent_id"
  end

  create_table "employees", force: :cascade do |t|
    t.integer  "registry"
    t.string   "employee_cpf"
    t.string   "admission_date"
    t.string   "shift"
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.string   "gender"
    t.string   "birth_date"
    t.string   "permission"
    t.string   "password_digest"
    t.string   "authorization_token"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "notifications", force: :cascade do |t|
    t.string   "title"
    t.text     "notification_text"
    t.integer  "notification_emitter_id"
    t.date     "notification_date"
    t.time     "notification_hour"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "motive"
    t.index ["notification_emitter_id"], name: "index_notifications_on_notification_emitter_id"
  end

  create_table "parents", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.string   "gender"
    t.string   "password_digest"
    t.string   "authorization_token"
    t.date     "birth_date"
    t.string   "parent_cpf"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "suspensions", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "quantity_days"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index [nil], name: "index_suspensions_on_alumn_id"
    t.index [nil], name: "index_suspensions_on_employee_id"
  end

end
