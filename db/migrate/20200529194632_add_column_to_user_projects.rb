class AddColumnToUserProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :user_projects, :category, :text
  end
end
