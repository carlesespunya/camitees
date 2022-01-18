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

ActiveRecord::Schema.define(version: 2022_01_18_101758) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "back_personalizacions", force: :cascade do |t|
    t.bigint "product_id", null: false
    t.bigint "personalizacion_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["personalizacion_id"], name: "index_back_personalizacions_on_personalizacion_id"
    t.index ["product_id"], name: "index_back_personalizacions_on_product_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "sku"
  end

  create_table "colors", force: :cascade do |t|
    t.string "name"
    t.string "hex"
    t.integer "sku"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "front_personalizacions", force: :cascade do |t|
    t.bigint "product_id", null: false
    t.bigint "personalizacion_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["personalizacion_id"], name: "index_front_personalizacions_on_personalizacion_id"
    t.index ["product_id"], name: "index_front_personalizacions_on_product_id"
  end

  create_table "order_product_sizes", force: :cascade do |t|
    t.bigint "order_product_id", null: false
    t.bigint "product_size_id", null: false
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["order_product_id"], name: "index_order_product_sizes_on_order_product_id"
    t.index ["product_size_id"], name: "index_order_product_sizes_on_product_size_id"
  end

  create_table "order_products", force: :cascade do |t|
    t.bigint "order_id", null: false
    t.bigint "product_id", null: false
    t.bigint "product_color_id", null: false
    t.bigint "front_personalizacion_id", null: false
    t.bigint "back_personalizacion_id", null: false
    t.integer "quantity"
    t.integer "subtotal"
    t.integer "unit_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["back_personalizacion_id"], name: "index_order_products_on_back_personalizacion_id"
    t.index ["front_personalizacion_id"], name: "index_order_products_on_front_personalizacion_id"
    t.index ["order_id"], name: "index_order_products_on_order_id"
    t.index ["product_color_id"], name: "index_order_products_on_product_color_id"
    t.index ["product_id"], name: "index_order_products_on_product_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.integer "total"
    t.string "stattus"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "personalizacion_prices", force: :cascade do |t|
    t.integer "price"
    t.integer "min"
    t.integer "max"
    t.bigint "personalizacion_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["personalizacion_id"], name: "index_personalizacion_prices_on_personalizacion_id"
  end

  create_table "personalizacions", force: :cascade do |t|
    t.string "name"
    t.string "size"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "sku"
  end

  create_table "product_categories", force: :cascade do |t|
    t.bigint "category_id", null: false
    t.bigint "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_product_categories_on_category_id"
    t.index ["product_id"], name: "index_product_categories_on_product_id"
  end

  create_table "product_colors", force: :cascade do |t|
    t.bigint "product_id", null: false
    t.bigint "color_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "link"
    t.index ["color_id"], name: "index_product_colors_on_color_id"
    t.index ["product_id"], name: "index_product_colors_on_product_id"
  end

  create_table "product_prices", force: :cascade do |t|
    t.integer "price"
    t.integer "min"
    t.integer "max"
    t.bigint "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_product_prices_on_product_id"
  end

  create_table "product_sizes", force: :cascade do |t|
    t.bigint "product_id", null: false
    t.bigint "size_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_product_sizes_on_product_id"
    t.index ["size_id"], name: "index_product_sizes_on_size_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "sku"
  end

  create_table "sizes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "sku"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "back_personalizacions", "personalizacions"
  add_foreign_key "back_personalizacions", "products"
  add_foreign_key "front_personalizacions", "personalizacions"
  add_foreign_key "front_personalizacions", "products"
  add_foreign_key "order_product_sizes", "order_products"
  add_foreign_key "order_product_sizes", "product_sizes"
  add_foreign_key "order_products", "back_personalizacions"
  add_foreign_key "order_products", "front_personalizacions"
  add_foreign_key "order_products", "orders"
  add_foreign_key "order_products", "product_colors"
  add_foreign_key "order_products", "products"
  add_foreign_key "orders", "users"
  add_foreign_key "personalizacion_prices", "personalizacions"
  add_foreign_key "product_categories", "categories"
  add_foreign_key "product_categories", "products"
  add_foreign_key "product_colors", "colors"
  add_foreign_key "product_colors", "products"
  add_foreign_key "product_prices", "products"
  add_foreign_key "product_sizes", "products"
  add_foreign_key "product_sizes", "sizes"
end
