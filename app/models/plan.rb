class Plan < ApplicationRecord
  belongs_to :housework
  validates  :start_time, presence: true
end
