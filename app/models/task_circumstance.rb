class TaskCircumstance < ApplicationRecord
  belongs_to :task
  belongs_to :circumstance
end
