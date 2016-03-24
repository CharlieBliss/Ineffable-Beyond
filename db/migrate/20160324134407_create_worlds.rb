class CreateWorlds < ActiveRecord::Migration
  def change
    create_table :worlds do |t|
      t.string :name, null: false, limit: 50
      t.boolean :private, default: false
      t.text :description
      t.timestamps null: false
    end
  end
end
