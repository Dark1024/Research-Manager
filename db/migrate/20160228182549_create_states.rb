class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string "name", :limit => 25, :null => false
      t.timestamps null: false
    end
  end
end
