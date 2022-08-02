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

ActiveRecord::Schema[7.0].define(version: 2022_08_02_055216) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "name"
    t.string "cargo"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "pqrs", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "tipo"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status"
    t.index ["user_id"], name: "index_pqrs_on_user_id"
  end

  create_table "predios", force: :cascade do |t|
    t.string "tipo"
    t.string "ubicacion"
    t.integer "tipo_no"
    t.integer "ubicacion_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "respuesta_pqrs", force: :cascade do |t|
    t.bigint "pqr_id", null: false
    t.bigint "admin_id", null: false
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_respuesta_pqrs_on_admin_id"
    t.index ["pqr_id"], name: "index_respuesta_pqrs_on_pqr_id"
  end

  create_table "users", force: :cascade do |t|
    t.bigint "predio_id", null: false
    t.date "fecha_ini"
    t.date "fecha_fin"
    t.string "status"
    t.string "name"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["predio_id"], name: "index_users_on_predio_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "pqrs", "users"
  add_foreign_key "respuesta_pqrs", "admins"
  add_foreign_key "respuesta_pqrs", "pqrs"
  add_foreign_key "users", "predios"
end
