# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    sequence(:name) { |n| "TEST_NAME#{n}" }
    sequence(:age) { |n| n }
    is_active { false }
  end
end
