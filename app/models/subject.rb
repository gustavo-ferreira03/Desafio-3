class Subject < ApplicationRecord
    has_many :attended_subjects
    has_many :students, through: :attended_subjects
end
