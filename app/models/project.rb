class Project < ApplicationRecord
    has_many :user_projects, dependent: :destroy
    has_many :users, through: :user_projects
    has_many :tasks, dependent: :destroy
    accepts_nested_attributes_for :tasks
    accepts_nested_attributes_for :user_projects
    validates :name, presence: true
    validate :due_date_cannot_be_in_the_past
    scope :completed, -> { where(complete: true) }
    scope :not_completed, -> { where(complete: false) }
    scope :due_soon, lambda { where("due_date BETWEEN '#{DateTime.now.beginning_of_day}' AND '#{DateTime.now.end_of_day + 7}'")  }

    def due_date_cannot_be_in_the_past
        if due_date.present? && due_date < Date.today
            errors.add(:due_date, "cannot be in the past")
        end
    end
end
