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

ActiveRecord::Schema.define(version: 20150813153453) do

  create_table "categories", force: :cascade do |t|
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "goods", force: :cascade do |t|
    t.string   "name"
    t.binary   "photo"
    t.text     "description"
    t.integer  "category_id"
    t.integer  "price"
    t.boolean  "available"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "goods", ["category_id"], name: "index_goods_on_category_id"

  create_table "goods_orders", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "good_id"
    t.integer  "count"
    t.integer  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "goods_orders", ["good_id"], name: "index_goods_orders_on_good_id"
  add_index "goods_orders", ["order_id"], name: "index_goods_orders_on_order_id"

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "status"
    t.text     "delivery_adress"
    t.integer  "payment_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "orders", ["payment_id"], name: "index_orders_on_payment_id"
  add_index "orders", ["user_id"], name: "index_orders_on_user_id"

  create_table "payments", force: :cascade do |t|
    t.string   "type_of_payment"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "adress"
    t.string   "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
