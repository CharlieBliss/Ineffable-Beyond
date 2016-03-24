class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :name, limit: 50
      t.boolean :private, default: false
      t.references :world, index: true, null: false
      t.references :author, index: true, null: false
      t.timestamps null: false
    end
  end
end
