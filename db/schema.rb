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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130811052028) do

  create_table "assessments", :force => true do |t|
    t.string   "title"
    t.boolean  "sm1"
    t.boolean  "sm2"
    t.boolean  "sm3"
    t.boolean  "sm4"
    t.boolean  "sm5"
    t.boolean  "sm6"
    t.boolean  "sm7"
    t.boolean  "sm8"
    t.boolean  "pc1"
    t.boolean  "pc2"
    t.boolean  "pc3"
    t.boolean  "pc4"
    t.boolean  "pc5"
    t.boolean  "pc6"
    t.boolean  "eg1"
    t.boolean  "eg2"
    t.boolean  "eg3"
    t.boolean  "eg4"
    t.boolean  "eg5"
    t.boolean  "eg6"
    t.boolean  "ta1"
    t.boolean  "ta2"
    t.boolean  "ta3"
    t.boolean  "ta4"
    t.boolean  "ta5"
    t.boolean  "ta6"
    t.boolean  "ta7"
    t.boolean  "sr1"
    t.boolean  "sr2"
    t.boolean  "sr3"
    t.boolean  "sr4"
    t.boolean  "sr5"
    t.boolean  "sr6"
    t.boolean  "sa1"
    t.boolean  "sa2"
    t.boolean  "sa3"
    t.boolean  "sa4"
    t.boolean  "sa5"
    t.boolean  "sa6"
    t.boolean  "dr1"
    t.boolean  "dr2"
    t.boolean  "dr3"
    t.boolean  "dr4"
    t.boolean  "dr5"
    t.boolean  "dr6"
    t.boolean  "cr1"
    t.boolean  "cr2"
    t.boolean  "cr3"
    t.boolean  "cr4"
    t.boolean  "cr5"
    t.boolean  "cr6"
    t.boolean  "st1"
    t.boolean  "st2"
    t.boolean  "st3"
    t.boolean  "st4"
    t.boolean  "st5"
    t.boolean  "st6"
    t.boolean  "st7"
    t.boolean  "vm1"
    t.boolean  "vm2"
    t.boolean  "vm3"
    t.boolean  "vm4"
    t.boolean  "vm5"
    t.boolean  "vm6"
    t.boolean  "vm7"
    t.boolean  "eh1"
    t.boolean  "eh2"
    t.boolean  "eh3"
    t.boolean  "eh4"
    t.boolean  "eh5"
    t.boolean  "eh6"
    t.boolean  "oe1"
    t.boolean  "oe2"
    t.boolean  "oe3"
    t.boolean  "oe4"
    t.boolean  "oe5"
    t.boolean  "oe6"
    t.string   "target"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
