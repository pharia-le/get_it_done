class Circumstance < ApplicationRecord
    has_many :task_circumstances
    has_many :tasks, through: :task_circumstances
    # default_scope { order("created_at ASC") }
    scope :by_create, -> { order("created_at ASC") }
end
