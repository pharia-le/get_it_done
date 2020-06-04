class RemoveCategoryInUserProjects < ActiveRecord::Migration[6.0]
  def change
    remove_column :user_projects, :category
  end
end
