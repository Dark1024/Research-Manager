class CreateResearches < ActiveRecord::Migration
  def change
    create_table :researches do |t|
      t.string "name", :limit => 20, :null => false
      t.text "description"
      t.integer "researcher_id", :null => false
      t.timestamps null: false
    end
  end
end
