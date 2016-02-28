class CreateFaculties < ActiveRecord::Migration
  def change
    create_table :faculties do |t|
      t.string "name", :limit => 30 , :null => false
      t.text "description"
      t.timestamps null: false
    end
  end
end
