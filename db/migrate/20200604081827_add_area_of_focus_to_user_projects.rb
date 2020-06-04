class AddAreaOfFocusToUserProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :user_projects, :aof, :boolean
  end
end
