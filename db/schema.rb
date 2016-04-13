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

ActiveRecord::Schema.define(version: 20160412010647) do

  create_table "apartments", force: true do |t|
    t.integer  "community_id"
    t.string   "name"
    t.integer  "m2"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bankaccounts", force: true do |t|
    t.string   "name"
    t.string   "accountholder"
    t.string   "accountnum"
    t.string   "bankname"
    t.integer  "initbalance"
    t.integer  "community_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "charts", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.integer  "user_id"
    t.integer  "status_id"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "commentable_id"
    t.string   "commentable_type"
  end

  add_index "comments", ["commentable_id"], name: "index_comments_on_commentable_id"

  create_table "common_rooms", force: true do |t|
    t.string   "name"
    t.integer  "community_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "communities", force: true do |t|
    t.string   "nombre"
    t.string   "address"
    t.string   "phone"
    t.string   "email"
    t.string   "website"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "userpass"
    t.string   "adminpass"
    t.string   "concierge"
  end

  create_table "configsystems", force: true do |t|
    t.integer  "interesttype_id"
    t.decimal  "interesttypeperc"
    t.integer  "interestreceivableaccount_id"
    t.decimal  "penaltyamount"
    t.integer  "penaltyreceivableaccount_id"
    t.string   "periodyear"
    t.string   "periodmonth"
    t.date     "periodinit"
    t.date     "periodfin"
    t.integer  "extension"
    t.integer  "correctionday"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "journalins", force: true do |t|
    t.string   "name"
    t.string   "voucher"
    t.integer  "receivableaccount_id"
    t.decimal  "amount"
    t.string   "description"
    t.integer  "community_id"
    t.date     "paymentdate"
    t.integer  "apartment_id"
    t.integer  "paymentmethod_id"
    t.string   "image"
    t.string   "period"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "journalouts", force: true do |t|
    t.string   "name"
    t.string   "voucher"
    t.integer  "payable_id"
    t.decimal  "amount"
    t.string   "description"
    t.integer  "community_id"
    t.date     "paymentdate"
    t.date     "duedate"
    t.integer  "paymentmethod_id"
    t.string   "image"
    t.string   "period"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "journals", force: true do |t|
    t.string   "name"
    t.integer  "vendor_id"
    t.integer  "paybleaccount_id"
    t.integer  "receivableaccount_id"
    t.integer  "credit"
    t.integer  "debit"
    t.string   "description"
    t.string   "image"
    t.string   "journalnum"
    t.integer  "community_id"
    t.date     "duedate"
    t.date     "paymentdate"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "paymentmethod_id"
  end

  add_index "journals", ["paymentmethod_id"], name: "index_journals_on_paymentmethod_id"

  create_table "messages", force: true do |t|
    t.integer  "user_id_from"
    t.integer  "user_id_to"
    t.text     "message"
    t.boolean  "active"
    t.boolean  "viewed"
    t.string   "name"
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "newsbooks", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "user_id"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payableaccounts", force: true do |t|
    t.string   "type"
    t.string   "subtype"
    t.string   "subsubtype"
    t.integer  "community_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "paymentmethods", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "paymenttypes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "receivableaccounts", force: true do |t|
    t.string   "name"
    t.integer  "initbalance"
    t.string   "descroption"
    t.integer  "pymenttype_id"
    t.string   "subtype"
    t.integer  "ammount"
    t.integer  "percentammount"
    t.string   "aliquot"
    t.string   "building"
    t.integer  "community_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reservations", force: true do |t|
    t.integer  "commonRoom_id"
    t.date     "initDate"
    t.date     "finDate"
    t.time     "initTime"
    t.time     "finTime"
    t.integer  "apartment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services", force: true do |t|
    t.string   "period"
    t.decimal  "porcgastocomun"
    t.decimal  "porcaguacaliente"
    t.decimal  "porccalefaccion"
    t.integer  "vendor_id"
    t.string   "custnumber"
    t.integer  "payableaccount_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "startscreens", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "status_types", force: true do |t|
    t.string   "nombre"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statuses", force: true do |t|
    t.text     "content",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "statusType_id"
    t.integer  "user_id"
  end

  add_index "statuses", ["statusType_id"], name: "index_statuses_on_statusType_id"
  add_index "statuses", ["user_id"], name: "index_statuses_on_user_id"

  create_table "subpayableaccounts", force: true do |t|
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", force: true do |t|
    t.string   "name"
    t.date     "inidate"
    t.date     "findate"
    t.time     "inihour"
    t.time     "finhour"
    t.text     "content"
    t.integer  "user_id_from"
    t.integer  "user_id_to"
    t.integer  "perccompleted"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tests", force: true do |t|
    t.string   "nombre"
    t.integer  "precio"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "firstName"
    t.string   "lastName"
    t.string   "email",                              null: false
    t.string   "encrypted_password",                 null: false
    t.string   "phone"
    t.string   "rut"
    t.string   "apartment"
    t.string   "webSite"
    t.string   "contactPhone"
    t.string   "contactEmail"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.integer  "profile_id"
    t.integer  "community_id"
    t.string   "communitypass"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "users", ["community_id"], name: "index_users_on_community_id"
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["profile_id"], name: "index_users_on_profile_id"
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "vendors", force: true do |t|
    t.string   "name"
    t.string   "rut"
    t.string   "accountnum"
    t.string   "bankname"
    t.integer  "community_id"
    t.string   "contactphone"
    t.string   "contactmail"
    t.string   "website"
    t.string   "address"
    t.integer  "bankaccount_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
