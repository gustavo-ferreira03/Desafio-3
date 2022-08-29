FactoryBot.define do
    factory :course do
        trait :with_students do
            transient do
                students_count { 5 }
            end
    
            after(:create) do |course, evaluator|
                create_list(:student, evaluator.students_count, course: course)
            end
        end
    end
end