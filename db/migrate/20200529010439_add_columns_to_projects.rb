class AddColumnsToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :complete, :boolean, default: false
    add_column :projects, :priority, :integer
  end
end
