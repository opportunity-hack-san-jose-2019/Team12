class Interest < ApplicationRecord
  has_and_belongs_to_many :interviewers
  has_and_belongs_to_many :students
end
