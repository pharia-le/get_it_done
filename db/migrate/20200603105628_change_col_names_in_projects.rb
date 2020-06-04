class ChangeColNamesInProjects < ActiveRecord::Migration[6.0]
  def change
    rename_column :projects, :due_date, :deadline
    rename_column :projects, :name, :title
  end
end
