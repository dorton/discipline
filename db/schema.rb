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

ActiveRecord::Schema.define(:version => 20121101024345) do

  create_table "detentions", :force => true do |t|
    t.string   "student_name"
    t.string   "parent_name"
    t.date     "today"
    t.date     "detention_date"
    t.string   "grade"
    t.string   "teacher"
    t.text     "reason"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "administrator"
  end

  create_table "inschools", :force => true do |t|
    t.string   "studen_name"
    t.string   "parent_name"
    t.string   "teacher"
    t.string   "grade"
    t.string   "days"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "administrator"
    t.text     "reason"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "suspensions", :force => true do |t|
    t.string   "studen_name"
    t.string   "parent_name"
    t.string   "teacher"
    t.string   "grade"
    t.string   "days"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "administrator"
    t.text     "reason"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "tardies", :force => true do |t|
    t.string   "studen_first_name"
    t.string   "student_last_name"
    t.string   "parent_name"
    t.string   "parent_address"
    t.text     "tardy_days"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

end
