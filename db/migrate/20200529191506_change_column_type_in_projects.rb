class ChangeColumnTypeInProjects < ActiveRecord::Migration[6.0]
  def change
    change_column :projects, :priority, :text
  end
end
