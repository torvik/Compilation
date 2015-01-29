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

ActiveRecord::Schema.define(version: 20150129233929) do

  create_table "products", force: true do |t|
    t.string   "nome"
    t.string   "status"
    t.string   "technology"
    t.integer  "source_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "products", ["source_id"], name: "index_products_on_source_id"

  create_table "products_sources", id: false, force: true do |t|
    t.integer "product_id", null: false
    t.integer "source_id",  null: false
  end

  create_table "projects", force: true do |t|
    t.string   "nome"
    t.string   "lider_tivit"
    t.string   "empresa"
    t.string   "pep"
    t.string   "lider_ict"
    t.date     "data_inicio"
    t.date     "data_pre"
    t.date     "data_teste"
    t.date     "data_homologacao"
    t.date     "data_pro"
    t.integer  "horas_swf"
    t.integer  "horas_sf"
    t.integer  "faturado_sf"
    t.integer  "faturado_swf"
    t.integer  "horas_consumidas"
    t.integer  "avanco_fisico"
    t.integer  "desvio"
    t.boolean  "processo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "requests", force: true do |t|
    t.date     "data_solicitacao"
    t.date     "data_pre"
    t.date     "data_pro"
    t.string   "status"
    t.date     "data_alteracao"
    t.boolean  "recompilado"
    t.text     "observation"
    t.string   "environment"
    t.boolean  "oficializar"
    t.date     "data_oficializacao"
    t.integer  "project_id"
    t.integer  "source_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "requests", ["project_id"], name: "index_requests_on_project_id"
  add_index "requests", ["source_id"], name: "index_requests_on_source_id"

  create_table "requests_sources", id: false, force: true do |t|
    t.integer "request_id", null: false
    t.integer "source_id",  null: false
  end

  create_table "sources", force: true do |t|
    t.string   "nome"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
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
    t.string   "nome"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
