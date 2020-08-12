class Circumstance < ApplicationRecord
    has_many :task_circumstances
    has_many :tasks, through: :task_circumstances
    scope :by_create, -> { order("created_at ASC") }
end
