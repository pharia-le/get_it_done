class AddAttrToUserProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :user_projects, :fun, :boolean
  end
end
