class CreateJournals < ActiveRecord::Migration
  def change
    create_table :journals do |t|
      t.string :name
      t.string :company
      t.text :link

      t.timestamps null: false
    end
  end
end
