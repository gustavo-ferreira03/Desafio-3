class Course < ApplicationRecord
    has_many :students

    def average_cr
        sum = 0
        students.each do |student|
            sum += student.cr
        end
        sum / students.count
    end
end
