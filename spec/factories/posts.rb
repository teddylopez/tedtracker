FactoryGirl.define do
  factory :post do
    date Date.today
    rationale "Post 1"
    user
    overtime_request 3.5
  end

  factory :second_post, class: "Post" do
    date Date.yesterday
    rationale "Post 2"
    user
    overtime_request 0.5
  end
end
