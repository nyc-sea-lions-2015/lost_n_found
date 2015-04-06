class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.integer :user_id
      t.boolean :lost
      t.boolean :found

      t.timestamps
    end
  end
end
