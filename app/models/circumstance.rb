class Circumstance < ApplicationRecord
    has_many :task_circumstances
    has_many :tasks, through: :task_circumstances
end
