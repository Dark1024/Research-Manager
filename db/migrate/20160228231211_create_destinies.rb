class CreateDestinies < ActiveRecord::Migration
  def change
    create_table :destinies do |t|
      t.integer :actable_id
      t.string  :actable_type
    end
  end
end
