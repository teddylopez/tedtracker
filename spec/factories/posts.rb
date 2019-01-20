FactoryGirl.define do
  factory :post do
    date Date.today
    rationale "Post 1"
    user
    daily_hours 12.5
  end

  factory :second_post, class: "Post" do
    date Date.yesterday
    rationale "Post 2"
    user
    daily_hours 8.0
  end
end
