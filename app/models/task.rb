class Task < ApplicationRecord
  has_and_belongs_to_many :topics
  has_and_belongs_to_many :posts
  has_and_belongs_to_many :pillars
end
