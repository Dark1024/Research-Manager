class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.belongs_to :research
      t.string :commet
      t.string :indexes
      t.text :link
      t.boolean :applied
      t.integer :ammount

      t.timestamps null: false
    end
  end
end
