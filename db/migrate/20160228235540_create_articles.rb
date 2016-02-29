class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string "name", :limit => 100, :null => false
      t.integer "research_id", :null => false
      t.integer "destiny_id", :null => false
      t.datetime "deadline"
      t.string "comment", :limit => 255
      t.string "indexes", :limit => 255
      t.text "link", :null => false
      t.boolean "applied", :default => false
      t.integer "amount", :default => 0

      t.timestamps null: false
    end
  end
end
