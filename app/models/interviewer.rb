class Interviewer < ApplicationRecord
  has_many :interviews
  has_and_belongs_to_many :interests
  has_many :register_code
end
