class Student < ApplicationRecord
  belongs_to :course
  has_many :attended_subjects
  has_many :subjects, through: :attended_subjects

  def cr
    sum = 0
    attended_subjects.each do |attended_subject|
      sum += attended_subject.grade
    end
    sum / attended_subjects.count
  end
end
