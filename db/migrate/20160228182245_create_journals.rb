class CreateJournals < ActiveRecord::Migration
  def change
    create_table :journals do |t|
      t.string "name", :limit => 75, :null => false
      t.string "company", :limit => 50, :null => false
      t.string "link", :limit => 255, :null => false
      t.timestamps null: false
    end
  end
end
