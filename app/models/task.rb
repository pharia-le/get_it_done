class Task < ApplicationRecord
  belongs_to :project
  has_many :task_circumstances, dependent: :destroy
  has_many :circumstances, through: :task_circumstances
  scope :not_done, -> { where(done: false) }
  scope :is_done, -> { where(done: true) }
  scope :today, -> { where(reminder: Date.today) }
  scope :low, -> { where(priority: "Low") }
  scope :med, -> { where(priority: "Medium") }
  scope :high, -> { where(priority: "High") }
end
