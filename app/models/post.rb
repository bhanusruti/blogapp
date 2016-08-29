class Post < ApplicationRecord
  
  belongs_to :user
  has_many :categorized_posts
  has_many :categories, through: :categorized_posts
  
end
