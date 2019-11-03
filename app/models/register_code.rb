class RegisterCode < ApplicationRecord
  belongs_to :interviewer
  belongs_to :student
  belongs_to :interview
end
