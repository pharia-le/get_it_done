class UserProject < ApplicationRecord
  belongs_to :user
  belongs_to :project
  scope :focus, -> { where(aof: true) }
end
