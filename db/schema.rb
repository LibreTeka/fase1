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

ActiveRecord::Schema.define(version: 20150427161923) do

  create_table "libr_libros", force: :cascade do |t|
    t.string   "titulo"
    t.string   "autor"
    t.string   "editorial"
    t.string   "comentario"
    t.string   "otro1"
    t.string   "otro2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "libr_rel_lib_usrs", force: :cascade do |t|
    t.integer  "libr_libro_id"
    t.integer  "libr_usuario_id"
    t.string   "ubicacion"
    t.string   "otro"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "libr_usuarios", force: :cascade do |t|
    t.string   "Nombre"
    t.string   "Apellido1"
    t.string   "Apellido2"
    t.string   "poblacion"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
