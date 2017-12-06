class CreateTodoitems < ActiveRecord::Migration[5.1]
  def change
    create_table :todoitems do |t|
      t.text :description
      t.boolean :completed
      t.references :milestone, foreign_key: true

      t.timestamps
    end
  end
end
