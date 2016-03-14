class CreateTexts < ActiveRecord::Migration
  def change
    create_table :texts do |t|
      t.belongs_to :researcher
      t.belongs_to :article
      t.integer :author_number

      t.timestamps null: false
    end
  end
end
