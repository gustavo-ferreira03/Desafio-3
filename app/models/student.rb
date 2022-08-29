class Student < ApplicationRecord
  belongs_to :course
  has_many :attended_subjects
  has_many :subjects, through: :attended_subjects
end
