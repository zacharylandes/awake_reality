class CreatePostsTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :posts_tasks do |t|
      t.references :post, foreign_key: true
      t.references :task, foreign_key: true

      t.timestamps
    end
  end
end
