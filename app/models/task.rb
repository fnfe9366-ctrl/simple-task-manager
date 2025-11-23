class Task < ApplicationRecord
  validates :title, presence: true
  validates :due_date, presence: true
  
  scope :completed, -> { where(completed: true) }
  scope :incomplete, -> { where(completed: false) }
end
