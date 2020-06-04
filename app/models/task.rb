class Task < ApplicationRecord
  belongs_to :project
  has_many :task_circumstances, dependent: :destroy
  has_many :circumstances, through: :task_circumstances
  validates :name, :turnaround_time, :reminder, presence: true
  scope :high_priority, -> { where(priority: "High") }
  scope :not_done, -> { where(done: false) }
  scope :is_done, -> { where(done: true) }
  scope :under_fifteen, -> { where("turnaround_time <= 15") }
  scope :today, -> { where(reminder: Date.today) }
end
