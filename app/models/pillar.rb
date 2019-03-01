class Pillar < ApplicationRecord
  has_and_belongs_to_many :tasks
  has_and_belongs_to_many :posts
  has_and_belongs_to_many :topics
end
