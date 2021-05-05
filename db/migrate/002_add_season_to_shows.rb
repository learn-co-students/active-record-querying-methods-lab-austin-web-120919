class AddSeasonToShows < ActiveRecord::Migration[5.2]
    change_table :shows do |t|
        t.string :season
    end
end