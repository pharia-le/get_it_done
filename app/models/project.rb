class Project < ApplicationRecord
    has_many :user_projects, dependent: :destroy
    has_many :users, through: :user_projects
    has_many :tasks, dependent: :destroy
    accepts_nested_attributes_for :tasks
    accepts_nested_attributes_for :user_projects
end
