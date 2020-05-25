class Team < ApplicationRecord
    has_many :user_team_projects
    has_many :users, through: :user_team_projects
    has_many :projects, through: :user_team_projects
end
