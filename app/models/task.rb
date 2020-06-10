class Task < ApplicationRecord
  belongs_to :project
  has_many :task_circumstances, dependent: :destroy
  has_many :circumstances, through: :task_circumstances
  validates :name, :priority, :reminder, presence: true
  validate :reminder_cannot_be_in_the_past
  scope :not_done, -> { where(done: false) }
  scope :is_done, -> { where(done: true) }
  scope :today, -> { where(reminder: Date.today) }
  scope :low, -> { where(priority: "Low") }
  scope :med, -> { where(priority: "Medium") }
  scope :high, -> { where(priority: "High") }

  def reminder_cannot_be_in_the_past
    if reminder.present? && reminder < Date.today
      errors.add(:reminder, "cannot be in the past")
    end
  end
end
