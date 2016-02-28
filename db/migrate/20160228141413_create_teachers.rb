class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string "first_name", :limit => 50, :null => false
      t.string "last_name", :limit => 50, :null => false
      t.string "email", :limit => 50, :null => false
      t.integer "phone_number"
      t.integer "office_number"
      t.timestamps null: false
    end
  end
end
