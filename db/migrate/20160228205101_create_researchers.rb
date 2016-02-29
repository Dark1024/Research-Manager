class CreateResearchers < ActiveRecord::Migration
  def change
    create_table :researchers do |t|
      t.string "first_name", :limit => 50, :null => false
      t.string "last_name", :limit => 50, :null => false
      t.string "email", :limit => 50, :null => false
      t.integer "phone_number"
      t.integer "office_number"
      t.integer "faculty_id", :null => false
      t.timestamps null: false
    end
  end
end
