class TasksTopic < ApplicationRecord
  belongs_to :task
  belongs_to :topic
end
