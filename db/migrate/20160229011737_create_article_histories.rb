class CreateArticleHistories < ActiveRecord::Migration
  def change
    create_table :article_histories do |t|
      t.integer "article_id", :null => false
      t.integer "state_id", :null => false
      t.timestamps null: false
    end
  end
end
