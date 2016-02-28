class CreateConferences < ActiveRecord::Migration
  def change
    create_table :conferences do |t|
      t.string "name", :limit => 75, :null => false
      t.string "place", :limit => 150, :null => false
      t.string "sponsor", :limit => 50, :null => false
      t.datetime "date", :null => false
      t.timestamps null: false
    end
  end
end
