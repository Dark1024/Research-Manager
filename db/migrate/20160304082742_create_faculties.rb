class CreateFaculties < ActiveRecord::Migration
  def change
    create_table :faculties do |t|
      t.string :name
      t.string :description
      t.belongs_to :university

      t.timestamps null: false
    end
  end
end
