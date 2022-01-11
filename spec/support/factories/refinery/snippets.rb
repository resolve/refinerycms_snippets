
FactoryGirl.define do
  factory :snippet, :class => Refinery::Snippets::Snippet do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

