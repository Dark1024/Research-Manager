class CreateResearches < ActiveRecord::Migration
  def change
    create_table :researches do |t|
      t.string :title
      t.string :description
      t.belongs_to :faculty
      
      t.timestamps null: false
    end
  end
end
