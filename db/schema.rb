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

ActiveRecord::Schema.define(version: 20180117130126) do

  create_table "aboutsamajs", force: :cascade do |t|
    t.string   "title",       null: false
    t.text     "description", null: false
    t.integer  "user_id"
    t.string   "photo"
    t.string   "attachment"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "summary"
  end

  create_table "advertises", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "photo"
    t.string   "on_page"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "excelattaches", force: :cascade do |t|
    t.string   "excel"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feedbacks", force: :cascade do |t|
    t.string   "title",       null: false
    t.text     "description", null: false
    t.integer  "user_id"
    t.string   "user_name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "summary"
  end

  create_table "galleries", force: :cascade do |t|
    t.string   "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "helps", force: :cascade do |t|
    t.string   "helper_name"
    t.string   "helper_post"
    t.string   "helper_address"
    t.string   "helper_phone"
    t.string   "helper_email"
    t.string   "helpie_name"
    t.string   "helpie_address"
    t.string   "helpie_phone"
    t.string   "help_title"
    t.text     "help_description"
    t.text     "help_expecation"
    t.integer  "user_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.text     "summary"
  end

  create_table "importantaffairs", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "attachment"
  end

  create_table "impressions", force: :cascade do |t|
    t.integer  "total_visitors"
    t.integer  "today_visitors"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "mahatvachevyaktis", force: :cascade do |t|
    t.string   "user_name",       null: false
    t.string   "post"
    t.string   "importance_type"
    t.string   "work_field"
    t.string   "phone_number",    null: false
    t.string   "address"
    t.string   "info"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.text     "summary"
  end

  create_table "manogats", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "user_name"
    t.text     "description"
    t.string   "photo"
    t.string   "attachment"
  end

  create_table "messages", force: :cascade do |t|
    t.string   "title",       null: false
    t.text     "description", null: false
    t.integer  "user_id"
    t.string   "photo"
    t.string   "attachment"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "punches", force: :cascade do |t|
    t.integer  "punchable_id",                          null: false
    t.string   "punchable_type", limit: 20,             null: false
    t.datetime "starts_at",                             null: false
    t.datetime "ends_at",                               null: false
    t.datetime "average_time",                          null: false
    t.integer  "hits",                      default: 1, null: false
    t.index ["average_time"], name: "index_punches_on_average_time"
    t.index ["punchable_type", "punchable_id"], name: "punchable_index"
  end

  create_table "recruitments", force: :cascade do |t|
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "attachment"
    t.text     "summary"
    t.string   "r_name"
    t.string   "education"
    t.string   "technical_education"
    t.string   "phone_no"
    t.string   "experience_post"
    t.string   "org_name"
    t.string   "from"
    t.string   "till"
    t.string   "r_email"
    t.string   "address"
    t.string   "r_photo"
    t.integer  "user_id"
  end

  create_table "samajikplaces", force: :cascade do |t|
    t.string   "title",       null: false
    t.text     "description", null: false
    t.integer  "user_id"
    t.string   "photo"
    t.string   "attachment"
    t.string   "place"
    t.string   "address"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "summary"
  end

  create_table "samajiksansthas", force: :cascade do |t|
    t.string   "title",       null: false
    t.text     "description", null: false
    t.integer  "user_id"
    t.string   "photo"
    t.string   "attachment"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "summary"
  end

  create_table "sandarbhsuchis", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "link"
    t.string   "attachment"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "sanghatnaactivities", force: :cascade do |t|
    t.date     "event_date",  null: false
    t.string   "title",       null: false
    t.text     "description", null: false
    t.integer  "user_id"
    t.string   "photo"
    t.string   "attachment"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "summary"
  end

  create_table "searchvadhuvars", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "age"
    t.string   "color"
    t.string   "education"
    t.integer  "weight"
    t.string   "height"
    t.string   "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shasandecisions", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "user_id"
    t.string   "photo"
    t.string   "attachment"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "summary"
  end

  create_table "shaskiyayojanas", force: :cascade do |t|
    t.string   "title",       null: false
    t.text     "description", null: false
    t.integer  "user_id"
    t.string   "photo"
    t.string   "attachment"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "summary"
  end

  create_table "summaries", force: :cascade do |t|
    t.text     "मुंबई_शहर"
    t.text     "मुंबई_उपनगर"
    t.text     "ठाणे"
    t.text     "पालचर"
    t.text     "राजगड"
    t.text     "रत्नागिरी"
    t.text     "सिंधुदुर्ग"
    t.text     "नाशिक"
    t.text     "धुळे"
    t.text     "नंदुरबार"
    t.text     "जळगाव"
    t.text     "अहमदनगर"
    t.text     "पुणे"
    t.text     "सातारा"
    t.text     "सांगली"
    t.text     "सोलापूर"
    t.text     "कोल्हापूर"
    t.text     "औरंगाबाद"
    t.text     "जालना"
    t.text     "परभणी"
    t.text     "हिंगोली"
    t.text     "बीड"
    t.text     "नांदेड"
    t.text     "उस्मानाबाद"
    t.text     "लातूर"
    t.text     "अमरावती"
    t.text     "बुलढाणा"
    t.text     "अकोला"
    t.text     "वाशिम"
    t.text     "यवतमाळ"
    t.text     "नागपूर"
    t.text     "वर्धा"
    t.text     "भंडारा"
    t.text     "गोंदिया"
    t.text     "चंद्रपूर"
    t.text     "गडचिरोली"
    t.text     "Rajya_sanghatna_summary"
    t.text     "Zilla_sanghatna_summary"
    t.text     "Dharmik_places_summary"
    t.text     "Sanghatna_activity_summary"
    t.text     "Yuva_sanghatna_summary"
    t.text     "Vadhuvar_summary"
    t.text     "Tantamukti_summary"
    t.text     "important_people_summary"
    t.text     "future_vision_summary"
    t.text     "recruitment_summary"
    t.text     "sandarbhsuchi_summary"
    t.text     "aboutsamaj_summary"
    t.text     "shaskiyayojana_summary"
    t.text     "shasannirnay_summary"
    t.text     "samajiksanstha_summary"
    t.text     "help_summary"
    t.text     "pratikriya_summary"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "tantamuktis", force: :cascade do |t|
    t.string   "user_name",                          null: false
    t.string   "post"
    t.string   "work_field"
    t.string   "photo"
    t.string   "phone_number",                       null: false
    t.text     "address"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.integer  "user_id"
    t.text     "summary"
    t.string   "tantamukti_approval", default: "No"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                     default: "",   null: false
    t.string   "encrypted_password",        default: "",   null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",             default: 0,    null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.string   "first_name",                default: "",   null: false
    t.string   "middle_name",               default: "",   null: false
    t.string   "last_name",                 default: "",   null: false
    t.string   "gender",                    default: " ",  null: false
    t.date     "birthdate"
    t.string   "post"
    t.string   "tenure"
    t.string   "avatar"
    t.string   "phone",                     default: "",   null: false
    t.string   "address",                   default: " ",  null: false
    t.string   "user_type"
    t.string   "adhikari_type"
    t.string   "adhikari_type_created",     default: "No"
    t.text     "bio"
    t.string   "work_at_district",          default: " ",  null: false
    t.string   "vadhuvar_created",          default: "No"
    t.string   "tanta_mukti_created",       default: "No"
    t.string   "karmachari_bharti_created", default: "No"
    t.string   "zilla_approval",            default: "No"
    t.string   "yuva_approval",             default: "No"
    t.string   "rajya_approval",            default: "No"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vadhuvars", force: :cascade do |t|
    t.string   "vadhuvar_name",                    null: false
    t.date     "birth_date",                       null: false
    t.string   "height"
    t.integer  "weight",                           null: false
    t.string   "education",                        null: false
    t.string   "blood_group"
    t.string   "phone_number",                     null: false
    t.string   "expecations"
    t.string   "salary",                           null: false
    t.string   "occupation",                       null: false
    t.string   "father_name",       default: "",   null: false
    t.string   "mother_name"
    t.string   "uncle_name"
    t.string   "address",                          null: false
    t.string   "sub_caste",                        null: false
    t.string   "photo"
    t.text     "bio"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "user_id"
    t.text     "summary"
    t.string   "vadhuvar_approval", default: "No"
    t.string   "gender",                           null: false
    t.string   "vadhuvar_sirname",  default: "",   null: false
    t.string   "color"
    t.integer  "age"
  end

  create_table "visions", force: :cascade do |t|
    t.string   "attachment"
    t.string   "title"
    t.text     "description", null: false
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "summary"
  end

end
