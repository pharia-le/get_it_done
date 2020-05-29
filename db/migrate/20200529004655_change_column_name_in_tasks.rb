class ChangeColumnNameInTasks < ActiveRecord::Migration[6.0]
  def change
    rename_column :tasks, :complete, :done
  end
end
