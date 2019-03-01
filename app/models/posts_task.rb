class PostsTask < ApplicationRecord
  belongs_to :post
  belongs_to :task
end
