class Interview < ApplicationRecord
  belongs_to :event
  belongs_to :interviewer
  belongs_to :student
end
