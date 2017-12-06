class CreateMilestones < ActiveRecord::Migration[5.1]
  def change
    create_table :milestones do |t|
      t.text :content
      t.date :due
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
