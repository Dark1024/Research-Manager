class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.belongs_to :research
      t.belongs_to :researcher
      t.belongs_to :type

      t.timestamps null: false
    end
  end
end
