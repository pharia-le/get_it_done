class Task < ApplicationRecord
  belongs_to :project
  validates :name, presence: true
  validates :turnaround_time, presence: true
  scope :high_priority, -> { where(priority: "High") }
  scope :not_done, -> { where(done: false) }
  scope :is_done, -> { where(done: true) }
  scope :under_fifteen, -> { where("turnaround_time <= 15") }
end
