FactoryBot.define do
    factory :attended_subject do
        grade { rand(0..100) }
        period { "#{rand(0..10000)}" }

        association :subject
    end
end