FactoryGirl.define do
  factory :post do
    date Date.today
    rationale "Post 1"
    user
  end

  factory :second_post, class: "Post" do
    date Date.yesterday
    rationale "Post 2"
    user
  end
end
