class Topic < ApplicationRecord
  has_and_belongs_to_many :pillars
  has_and_belongs_to_many :tasks
  has_and_belongs_to_many :posts

end
