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

ActiveRecord::Schema.define(version: 20180207195044) do

  create_table "koszyks", force: :cascade do |t|
    t.integer "liczba_sztuk"
    t.integer "id_produktu"
    t.integer "id_zamowienia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id_produktu"], name: "index_koszyks_on_id_produktu"
    t.index ["id_zamowienia"], name: "index_koszyks_on_id_zamowienia"
  end

  create_table "obszars", primary_key: "id_obszaru", force: :cascade do |t|
    t.string "kod_pocztowy"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "produkts", primary_key: "id_produktu", force: :cascade do |t|
    t.float "cena"
    t.float "czas_przygotowania"
    t.string "nazwa_produktu"
    t.string "opis_produktu"
    t.integer "id_restauracji"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id_restauracji"], name: "index_produkts_on_id_restauracji"
  end

  create_table "restauracjas", primary_key: "id_restauracji", force: :cascade do |t|
    t.string "kod_pocztowy_r"
    t.string "nazwa_restauracji"
    t.string "numer_budynku_r"
    t.string "numer_lokalu_r"
    t.string "opis_restauracji"
    t.string "ulica_r"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restauracjas_obszars", id: false, force: :cascade do |t|
    t.integer "restauracja_id"
    t.integer "obszar_id"
    t.index ["obszar_id"], name: "index_restauracjas_obszars_on_obszar_id"
    t.index ["restauracja_id"], name: "index_restauracjas_obszars_on_restauracja_id"
  end

  create_table "typs", primary_key: "id_typu", force: :cascade do |t|
    t.string "nazwa_typu"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ulicas", primary_key: "id_ulicy", force: :cascade do |t|
    t.string "nazwa_ulicy"
    t.integer "id_obszaru"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id_obszaru"], name: "index_ulicas_on_id_obszaru"
  end

  create_table "uzytkowniks", primary_key: "index", force: :cascade do |t|
    t.string "imie"
    t.string "kod_pocztowy_u"
    t.string "nazwisko"
    t.string "nr_budynku_u"
    t.string "nr_mieszkania_u"
    t.string "ulica_u"
    t.integer "id_restauracji"
    t.integer "id_typu"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.index ["id_restauracji"], name: "index_uzytkowniks_on_id_restauracji"
    t.index ["id_typu"], name: "index_uzytkowniks_on_id_typu"
  end

  create_table "zamowienies", primary_key: "id_zamowienia", force: :cascade do |t|
    t.float "czas_realizacji"
    t.date "data_zamownienia"
    t.float "koszt"
    t.integer "index"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["index"], name: "index_zamowienies_on_index"
  end

end
