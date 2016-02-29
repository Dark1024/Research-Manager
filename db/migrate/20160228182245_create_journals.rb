class CreateJournals < ActiveRecord::Migration
  def change
    create_table :journals do |t|
      t.string "name", :limit => 75, :null => false
      t.string "company", :limit => 50, :null => false
      t.text "link", :null => false
    end
  end
end
