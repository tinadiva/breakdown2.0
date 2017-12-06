class AddCompletedAtToTodoitems < ActiveRecord::Migration[5.1]
  def change
    add_column :todoitems, :completed_at, :datetime
  end
end
