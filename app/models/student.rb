class Student < ApplicationRecord
  belongs_to :course
  has_many :attended_subjects
  has_many :subjects, through: :attended_subjects

  def cr
    sum = 0
    total_hours = 0
    attended_subjects.each do |attended_subject|
      hours = attended_subject.subject.hours
      sum += attended_subject.grade * hours
      total_hours += hours
    end
    sum / total_hours
  end
end
