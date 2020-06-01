class ChangeColumnTypeInTasks < ActiveRecord::Migration[6.0]
  def change
    change_column :tasks, :priority, :text
  end
end
