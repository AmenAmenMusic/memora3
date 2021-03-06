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

ActiveRecord::Schema.define(version: 20200225114948) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "etudiants", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "nom", default: "", null: false
    t.string "prenom", default: "", null: false
    t.string "nom_filiere", default: "", null: false
    t.datetime "date_naissance"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_etudiants_on_confirmation_token", unique: true
    t.index ["email"], name: "index_etudiants_on_email", unique: true
    t.index ["reset_password_token"], name: "index_etudiants_on_reset_password_token", unique: true
  end

  create_table "filieres", force: :cascade do |t|
    t.string "nom_filiere"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "maitres", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "nom", default: "", null: false
    t.string "prenom", default: "", null: false
    t.string "niveau_etude", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_maitres_on_confirmation_token", unique: true
    t.index ["email"], name: "index_maitres_on_email", unique: true
    t.index ["reset_password_token"], name: "index_maitres_on_reset_password_token", unique: true
  end

  create_table "requetes", force: :cascade do |t|
    t.integer "etudiant_id"
    t.integer "maitre_id"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
