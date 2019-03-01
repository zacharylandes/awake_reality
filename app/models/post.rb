class Post < ApplicationRecord
  has_and_belongs_to_many :pillars
  has_and_belongs_to_many :topics
  has_and_belongs_to_many :tasks
end
