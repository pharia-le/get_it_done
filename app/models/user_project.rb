class UserProject < ApplicationRecord
  belongs_to :user
  belongs_to :project
  scope :business, -> { where(category: "Business") }
  scope :personal, -> { where(category: "Personal") }
end
