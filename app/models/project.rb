class Project < ApplicationRecord
    has_many :user_team_projects
    has_many :users, through: :user_team_projects
    has_many :teams, through: :user_team_projects
    has_many :tasks, through: :user_team_projects
end
