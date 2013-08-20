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

ActiveRecord::Schema.define(:version => 20130820021511) do

  create_table "assessments", :force => true do |t|
    t.string   "title",      :default => "",      :null => false
    t.boolean  "sm1",        :default => false,   :null => false
    t.boolean  "sm2",        :default => false,   :null => false
    t.boolean  "sm3",        :default => false,   :null => false
    t.boolean  "sm4",        :default => false,   :null => false
    t.boolean  "sm5",        :default => false,   :null => false
    t.boolean  "sm6",        :default => false,   :null => false
    t.boolean  "sm7",        :default => false,   :null => false
    t.boolean  "sm8",        :default => false,   :null => false
    t.boolean  "pc1",        :default => false,   :null => false
    t.boolean  "pc2",        :default => false,   :null => false
    t.boolean  "pc3",        :default => false,   :null => false
    t.boolean  "pc4",        :default => false,   :null => false
    t.boolean  "pc5",        :default => false,   :null => false
    t.boolean  "pc6",        :default => false,   :null => false
    t.boolean  "eg1",        :default => false,   :null => false
    t.boolean  "eg2",        :default => false,   :null => false
    t.boolean  "eg3",        :default => false,   :null => false
    t.boolean  "eg4",        :default => false,   :null => false
    t.boolean  "eg5",        :default => false,   :null => false
    t.boolean  "eg6",        :default => false,   :null => false
    t.boolean  "ta1",        :default => false,   :null => false
    t.boolean  "ta2",        :default => false,   :null => false
    t.boolean  "ta3",        :default => false,   :null => false
    t.boolean  "ta4",        :default => false,   :null => false
    t.boolean  "ta5",        :default => false,   :null => false
    t.boolean  "ta6",        :default => false,   :null => false
    t.boolean  "ta7",        :default => false,   :null => false
    t.boolean  "sr1",        :default => false,   :null => false
    t.boolean  "sr2",        :default => false,   :null => false
    t.boolean  "sr3",        :default => false,   :null => false
    t.boolean  "sr4",        :default => false,   :null => false
    t.boolean  "sr5",        :default => false,   :null => false
    t.boolean  "sr6",        :default => false,   :null => false
    t.boolean  "sa1",        :default => false,   :null => false
    t.boolean  "sa2",        :default => false,   :null => false
    t.boolean  "sa3",        :default => false,   :null => false
    t.boolean  "sa4",        :default => false,   :null => false
    t.boolean  "sa5",        :default => false,   :null => false
    t.boolean  "sa6",        :default => false,   :null => false
    t.boolean  "dr1",        :default => false,   :null => false
    t.boolean  "dr2",        :default => false,   :null => false
    t.boolean  "dr3",        :default => false,   :null => false
    t.boolean  "dr4",        :default => false,   :null => false
    t.boolean  "dr5",        :default => false,   :null => false
    t.boolean  "dr6",        :default => false,   :null => false
    t.boolean  "cr1",        :default => false,   :null => false
    t.boolean  "cr2",        :default => false,   :null => false
    t.boolean  "cr3",        :default => false,   :null => false
    t.boolean  "cr4",        :default => false,   :null => false
    t.boolean  "cr5",        :default => false,   :null => false
    t.boolean  "cr6",        :default => false,   :null => false
    t.boolean  "st1",        :default => false,   :null => false
    t.boolean  "st2",        :default => false,   :null => false
    t.boolean  "st3",        :default => false,   :null => false
    t.boolean  "st4",        :default => false,   :null => false
    t.boolean  "st5",        :default => false,   :null => false
    t.boolean  "st6",        :default => false,   :null => false
    t.boolean  "st7",        :default => false,   :null => false
    t.boolean  "vm1",        :default => false,   :null => false
    t.boolean  "vm2",        :default => false,   :null => false
    t.boolean  "vm3",        :default => false,   :null => false
    t.boolean  "vm4",        :default => false,   :null => false
    t.boolean  "vm5",        :default => false,   :null => false
    t.boolean  "vm6",        :default => false,   :null => false
    t.boolean  "vm7",        :default => false,   :null => false
    t.boolean  "eh1",        :default => false,   :null => false
    t.boolean  "eh2",        :default => false,   :null => false
    t.boolean  "eh3",        :default => false,   :null => false
    t.boolean  "eh4",        :default => false,   :null => false
    t.boolean  "eh5",        :default => false,   :null => false
    t.boolean  "eh6",        :default => false,   :null => false
    t.boolean  "oe1",        :default => false,   :null => false
    t.boolean  "oe2",        :default => false,   :null => false
    t.boolean  "oe3",        :default => false,   :null => false
    t.boolean  "oe4",        :default => false,   :null => false
    t.boolean  "oe5",        :default => false,   :null => false
    t.boolean  "oe6",        :default => false,   :null => false
    t.string   "target",     :default => "start", :null => false
    t.integer  "user_id"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  create_table "targets", :force => true do |t|
    t.string   "title",      :default => "", :null => false
    t.string   "shorttitle", :default => "", :null => false
    t.integer  "smt",                        :null => false
    t.integer  "pct",                        :null => false
    t.integer  "egt",                        :null => false
    t.integer  "tat",                        :null => false
    t.integer  "srt",                        :null => false
    t.integer  "sat",                        :null => false
    t.integer  "drt",                        :null => false
    t.integer  "crt",                        :null => false
    t.integer  "stt",                        :null => false
    t.integer  "vmt",                        :null => false
    t.integer  "eht",                        :null => false
    t.integer  "oet",                        :null => false
    t.integer  "user_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  add_index "targets", ["title", "shorttitle"], :name => "index_targets_on_title_and_shorttitle", :unique => true

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
