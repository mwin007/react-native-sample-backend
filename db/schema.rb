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

ActiveRecord::Schema.define(version: 20180423163159) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "landlords", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_landlords_on_name"
  end

  create_table "merchants", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_merchants_on_name"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.bigint "merchant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["merchant_id"], name: "index_products_on_merchant_id"
    t.index ["name"], name: "index_products_on_name"
  end

  create_table "qr_codes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "utm_source"
    t.string "utm_medium"
    t.string "utm_campaign"
    t.string "utm_term"
    t.string "utm_content"
    t.string "code"
    t.string "target_url"
    t.bigint "product_id"
    t.bigint "shop_id"
    t.index ["code"], name: "index_qr_codes_on_code"
    t.index ["product_id"], name: "index_qr_codes_on_product_id"
    t.index ["shop_id"], name: "index_qr_codes_on_shop_id"
    t.index ["utm_campaign"], name: "index_qr_codes_on_utm_campaign"
    t.index ["utm_content"], name: "index_qr_codes_on_utm_content"
    t.index ["utm_medium"], name: "index_qr_codes_on_utm_medium"
    t.index ["utm_source"], name: "index_qr_codes_on_utm_source"
    t.index ["utm_term"], name: "index_qr_codes_on_utm_term"
  end

  create_table "shops", force: :cascade do |t|
    t.string "name"
    t.bigint "landlord_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "latitude"
    t.float "longitude"
    t.string "address"
    t.index ["landlord_id"], name: "index_shops_on_landlord_id"
    t.index ["name"], name: "index_shops_on_name"
  end

  add_foreign_key "products", "merchants"
  add_foreign_key "qr_codes", "products"
  add_foreign_key "qr_codes", "shops"
  add_foreign_key "shops", "landlords"
end
