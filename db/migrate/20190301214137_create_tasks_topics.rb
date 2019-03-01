class CreateTasksTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks_topics do |t|
      t.references :task, foreign_key: true
      t.references :topic, foreign_key: true

      t.timestamps
    end
  end
end
