class Interview < ApplicationRecord
  belongs_to :event
  belongs_to :interviewer
  belongs_to :student
  has_many :register_code
end
