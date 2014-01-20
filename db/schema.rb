ActiveRecord::Schema.define(version: 20140120165749) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "styleboards", force: true do |t|
    t.text     "description"
    t.string   "image"
    t.integer  "place"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "works", force: true do |t|
    t.string   "name"
    t.string   "image"
    t.text     "description"
    t.string   "video"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
