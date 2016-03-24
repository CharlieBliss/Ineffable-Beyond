class CreateWorlds < ActiveRecord::Migration
  def change
    create_table :worlds do |t|
      t.string :name, null: false
      t.boolean :private_page, default: false
      t.text :description
      t.timestamps null: false
    end
  end
end
