class Post < ActiveRecord::Base
  validates_presence_of :date, :rationale
  belongs_to :user
end
