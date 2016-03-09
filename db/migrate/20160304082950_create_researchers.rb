class CreateResearchers < ActiveRecord::Migration
  def change
    create_table :researchers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone
      t.integer :office_phone

      t.timestamps null: false
    end
  end
end
