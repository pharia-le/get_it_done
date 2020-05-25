class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.belongs_to :user_team_project, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :team, null: false, foreign_key: true
      t.belongs_to :project, null: false, foreign_key: true
      t.timestamps
    end
  end
end
