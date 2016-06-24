# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20131224112649) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ind_item_history", force: :cascade do |t|
    t.integer  "individual_item_id"
    t.string   "summary"
    t.text     "description"
    t.decimal  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ind_item_history", ["individual_item_id"], name: "index_ind_item_history_on_individual_item_id", using: :btree

  create_table "individual_item", force: :cascade do |t|
    t.integer  "unique_system_number", null: false
    t.integer  "serial_number"
    t.string   "name"
    t.decimal  "value"
    t.decimal  "weight"
    t.integer  "lifespan_in_days"
    t.integer  "item_id"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "individual_item", ["item_id"], name: "index_individual_item_on_item_id", using: :btree
  add_index "individual_item", ["location_id"], name: "index_individual_item_on_location_id", using: :btree

  create_table "inventory", force: :cascade do |t|
    t.decimal  "quantity"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "item_id"
  end

  add_index "inventory", ["location_id"], name: "index_inventory_on_location_id", using: :btree

  create_table "item", force: :cascade do |t|
    t.string   "item_name",                        null: false
    t.boolean  "has_individuals",  default: false
    t.string   "barcode"
    t.decimal  "value"
    t.decimal  "weight"
    t.integer  "lifespan_in_days"
    t.integer  "item_class_id"
    t.integer  "item_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "item", ["item_class_id"], name: "index_item_on_item_class_id", using: :btree
  add_index "item", ["item_type_id"], name: "index_item_on_item_type_id", using: :btree

  create_table "item_class", force: :cascade do |t|
    t.string   "item_class_code", null: false
    t.string   "item_class_name", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "item_class", ["item_class_code"], name: "index_item_class_on_item_class_code", using: :btree

  create_table "item_type", force: :cascade do |t|
    t.string   "item_type_code", null: false
    t.string   "item_type_name", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "location", force: :cascade do |t|
    t.string   "location_code",     null: false
    t.string   "location_name",     null: false
    t.integer  "location_class_id", null: false
    t.integer  "location_type_id"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "location", ["location_id"], name: "index_location_on_location_id", using: :btree

  create_table "location_class", force: :cascade do |t|
    t.string   "location_class_code",                null: false
    t.string   "location_class_name",                null: false
    t.boolean  "physical_location",   default: true, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "location_type", force: :cascade do |t|
    t.string   "location_type_code", null: false
    t.string   "location_type_name", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
