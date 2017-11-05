class CreateSteps < ActiveRecord::Migration[5.1]
  def change
    create_table :steps do |t|
      t.text :task
      t.date :due_date
      t.boolean :notification
      t.belongs_to :project, foreign_key: true

      t.timestamps
    end
  end
end
