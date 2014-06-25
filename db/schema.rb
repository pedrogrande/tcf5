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

ActiveRecord::Schema.define(version: 20140625013323) do

  create_table "banners", force: true do |t|
    t.string   "name"
    t.string   "image"
    t.string   "link"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "icon"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "course_workshops", force: true do |t|
    t.integer  "course_id"
    t.integer  "workshop_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "course_workshops", ["course_id"], name: "index_course_workshops_on_course_id"
  add_index "course_workshops", ["workshop_id"], name: "index_course_workshops_on_workshop_id"

  create_table "courses", force: true do |t|
    t.string   "name"
    t.string   "tagline"
    t.text     "intro"
    t.text     "description"
    t.string   "image"
    t.string   "price"
    t.string   "icon"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "enquiries", force: true do |t|
    t.string   "name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "enrolments", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "email"
    t.string   "address"
    t.string   "suburb"
    t.string   "state"
    t.string   "postcode"
    t.string   "country"
    t.boolean  "paid"
    t.integer  "price"
    t.string   "guid"
    t.string   "stripe_id"
    t.integer  "course_id"
    t.integer  "intake_id"
    t.integer  "payment_id"
    t.integer  "special_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "enrolments", ["course_id"], name: "index_enrolments_on_course_id"
  add_index "enrolments", ["intake_id"], name: "index_enrolments_on_intake_id"
  add_index "enrolments", ["payment_id"], name: "index_enrolments_on_payment_id"
  add_index "enrolments", ["special_id"], name: "index_enrolments_on_special_id"

  create_table "event_registrations", force: true do |t|
    t.integer  "event_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "event_registrations", ["event_id"], name: "index_event_registrations_on_event_id"

  create_table "events", force: true do |t|
    t.string   "name"
    t.string   "tagline"
    t.text     "description"
    t.date     "date"
    t.time     "start_time"
    t.time     "end_time"
    t.integer  "location_id"
    t.string   "icon"
    t.string   "link"
    t.string   "slug"
    t.string   "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events", ["location_id"], name: "index_events_on_location_id"

  create_table "info_enquiries", force: true do |t|
    t.string   "email"
    t.integer  "referrer_id"
    t.string   "first_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "info_enquiries", ["referrer_id"], name: "index_info_enquiries_on_referrer_id"

  create_table "intakes", force: true do |t|
    t.integer  "course_id"
    t.integer  "location_id"
    t.string   "day"
    t.date     "date"
    t.date     "end_date"
    t.time     "start_time"
    t.time     "end_time"
    t.integer  "number_of_places"
    t.integer  "number_of_students_registered"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "intakes", ["course_id"], name: "index_intakes_on_course_id"
  add_index "intakes", ["location_id"], name: "index_intakes_on_location_id"

  create_table "locations", force: true do |t|
    t.string   "name"
    t.string   "building"
    t.string   "street"
    t.string   "suburb"
    t.string   "state"
    t.string   "postcode"
    t.string   "country"
    t.string   "map_link"
    t.string   "city"
    t.string   "logo"
    t.text     "embed_map"
    t.string   "website"
    t.string   "phone"
    t.string   "image"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payments", force: true do |t|
    t.string   "payment_method"
    t.string   "payment_price"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "payments", ["user_id"], name: "index_payments_on_user_id"

  create_table "posts", force: true do |t|
    t.string   "title"
    t.string   "lead"
    t.text     "content"
    t.string   "image"
    t.integer  "user_id"
    t.integer  "category_id"
    t.string   "slug"
    t.boolean  "publish"
    t.date     "published_date"
    t.integer  "impressions_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "posts", ["category_id"], name: "index_posts_on_category_id"
  add_index "posts", ["user_id"], name: "index_posts_on_user_id"

  create_table "profiles", force: true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "profile_picture"
    t.integer  "user_id"
    t.string   "slug"
    t.string   "google_plus"
    t.string   "linkedin"
    t.string   "twitter"
    t.string   "github"
    t.string   "website"
    t.string   "title"
    t.text     "info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id"

  create_table "referral_enrolments", force: true do |t|
    t.integer  "referrer_id"
    t.integer  "enrolment_id"
    t.integer  "student_paid"
    t.integer  "amount_owed"
    t.integer  "date_paid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "referral_enrolments", ["enrolment_id"], name: "index_referral_enrolments_on_enrolment_id"
  add_index "referral_enrolments", ["referrer_id"], name: "index_referral_enrolments_on_referrer_id"

  create_table "referral_visits", force: true do |t|
    t.integer  "referrer_id"
    t.string   "ref_session"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "referral_visits", ["referrer_id"], name: "index_referral_visits_on_referrer_id"

  create_table "referrers", force: true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "contact_phone"
    t.string   "company"
    t.string   "referral_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "referrers", ["user_id"], name: "index_referrers_on_user_id"

  create_table "skill_groups", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "icon"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skill_levels", force: true do |t|
    t.string   "name"
    t.string   "summary"
    t.string   "question"
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "specials", force: true do |t|
    t.integer  "admin_id"
    t.string   "recipient_email"
    t.integer  "course_id"
    t.integer  "intake_id"
    t.integer  "dollar_discount"
    t.integer  "percent_discount"
    t.string   "guid"
    t.date     "date_redeemed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "specials", ["course_id"], name: "index_specials_on_course_id"
  add_index "specials", ["intake_id"], name: "index_specials_on_intake_id"

  create_table "testimonials", force: true do |t|
    t.string   "name"
    t.text     "quote"
    t.text     "text"
    t.string   "image"
    t.integer  "course_id"
    t.boolean  "featured"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "testimonials", ["course_id"], name: "index_testimonials_on_course_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true

  create_table "workshops", force: true do |t|
    t.string   "name"
    t.string   "tagline"
    t.text     "description"
    t.integer  "duration_minutes"
    t.string   "icon"
    t.integer  "skill_group_id"
    t.string   "workshop_code"
    t.boolean  "active"
    t.string   "slug"
    t.text     "outcome"
    t.text     "objectives"
    t.text     "benefits"
    t.integer  "skill_level_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "workshops", ["skill_group_id"], name: "index_workshops_on_skill_group_id"
  add_index "workshops", ["skill_level_id"], name: "index_workshops_on_skill_level_id"

end
