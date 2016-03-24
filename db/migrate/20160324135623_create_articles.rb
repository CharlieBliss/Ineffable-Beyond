class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title, null:false
      t.text :content
      t.boolean :private, default: false
      t.references :author, index: true, null: false
      t.references :world, index: true
      t.references :story, index: true
      t.timestamps null: false
    end
  end
end
