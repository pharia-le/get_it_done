class Task < ApplicationRecord
  belongs_to :user_team_project
  belongs_to :user
  belongs_to :team
  belongs_to :project
end
