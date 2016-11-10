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

ActiveRecord::Schema.define(version: 20161102224351) do

  create_table "cadeira_socios", force: :cascade do |t|
    t.integer  "cpf",        limit: 8
    t.integer  "cadeira",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "cadeiras", force: :cascade do |t|
    t.integer  "cadeira",    limit: 4, null: false
    t.date     "data_posse"
    t.date     "data_saida"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "caixas", force: :cascade do |t|
    t.date     "data_caixa"
    t.float    "saldo",      limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "socios", force: :cascade do |t|
    t.string   "nome",            limit: 255
    t.integer  "cpf",             limit: 8
    t.string   "email",           limit: 255
    t.integer  "telefone",        limit: 8
    t.string   "endereco",        limit: 255
    t.date     "dataNascimento"
    t.string   "sexo",            limit: 255
    t.integer  "cadeira",         limit: 4
    t.string   "password_digest", limit: 255
    t.integer  "permissao",       limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "transacao_entradas", force: :cascade do |t|
    t.float    "valor",             limit: 24
    t.date     "data_entrada"
    t.string   "justifica_entrada", limit: 255
    t.string   "tipo",              limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "transacao_saidas", force: :cascade do |t|
    t.float    "valor",                    limit: 24
    t.date     "data_saida"
    t.string   "justifica_saida",          limit: 255
    t.string   "img_comprov_file_name",    limit: 255
    t.string   "img_comprov_content_type", limit: 255
    t.integer  "img_comprov_file_size",    limit: 4
    t.datetime "img_comprov_updated_at"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

end
