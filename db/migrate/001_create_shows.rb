class CreateShows < ActiveRecord::Migration[5.2]
    def change
        create_table "shows", force: :cascade do |t|
            t.string "name"
            t.string "day"
            t.string "network"
            t.integer "rating"
            t.string "season"
        end
    end
end