class CreateArticleTags < ActiveRecord::Migration
  def change
    create_table :articles_tags, id: false do |t|
      t.integer :article_id, index: true
      t.integer :tag_id, index: true
    end
  end
end
