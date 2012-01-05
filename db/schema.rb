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

ActiveRecord::Schema.define(:version => 20120103201959) do

  create_table "icd_blocks", :force => true do |t|
    t.string   "first_code"
    t.string   "last_code"
    t.string   "title"
    t.integer  "icd_chapter_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "icd_blocks", ["icd_chapter_id"], :name => "index_icd_blocks_on_icd_chapter_id"

  create_table "icd_chapters", :force => true do |t|
    t.string   "code"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "icd_first_level_codes", :force => true do |t|
    t.string   "code"
    t.string   "title"
    t.integer  "icd_block_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "icd_first_level_codes", ["icd_block_id"], :name => "index_icd_first_level_codes_on_icd_block_id"

  create_table "icd_second_level_codes", :force => true do |t|
    t.string   "code"
    t.string   "title"
    t.integer  "icd_first_level_code_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "icd_second_level_codes", ["icd_first_level_code_id"], :name => "index_icd_second_level_codes_on_icd_first_level_code_id"

end
