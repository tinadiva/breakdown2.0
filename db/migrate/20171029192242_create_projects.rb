class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.text :name
      t.text :description
      t.datetime :deadline
      t.boolean :reminder
      t.boolean :reward
      t.boolean :milestone

      t.timestamps
    end
  end
end
