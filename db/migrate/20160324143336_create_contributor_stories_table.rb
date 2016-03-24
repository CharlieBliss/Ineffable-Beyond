class CreateContributorStoriesTable < ActiveRecord::Migration
  def change
    create_table :story_contributors, id: false do |t|
      t.integer :contributor_id
      t.integer :story_id
    end
  end
end
