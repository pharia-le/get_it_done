class RemoveTurnAroundTimeInTasks < ActiveRecord::Migration[6.0]
  def change
    remove_column :tasks, :turnaround_time
  end
end
