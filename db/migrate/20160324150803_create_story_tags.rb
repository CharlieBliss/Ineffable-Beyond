class CreateStoryTags < ActiveRecord::Migration
  def change
    create_table :story_tags, id: false do |t|
      t.integer :story_id, index: true, null: false
      t.integer :tag_id, index: true, null: false
    end
  end
end
