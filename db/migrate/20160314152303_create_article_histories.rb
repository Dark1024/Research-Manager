class CreateArticleHistories < ActiveRecord::Migration
  def change
    create_table :article_histories do |t|
      t.belongs_to :article
      t.belongs_to :state
      t.datetime :deadline

      t.timestamps null: false
    end
  end
end
