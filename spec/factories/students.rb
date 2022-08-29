FactoryBot.define do
    factory :student do
        transient do
            attended_subjects_count { 5 }
        end

        after(:create) do |student, evaluator|
            create_list(:attended_subject, evaluator.attended_subjects_count, student: student)
        end

        association :course
    end
end