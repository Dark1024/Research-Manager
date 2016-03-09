class CreateConferences < ActiveRecord::Migration
  def change
    create_table :conferences do |t|
      t.string :name
      t.string :place
      t.string :sponsor
      t.datetime :date

      t.timestamps null: false
    end
  end
end
