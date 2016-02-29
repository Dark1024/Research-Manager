class CreateArticlesTeachers < ActiveRecord::Migration
  def change
    create_table :articles_teachers, id: false do |t|
      t.belongs_to :article, index: true
      t.belongs_to :teacher, index: true
    end
  end
end
