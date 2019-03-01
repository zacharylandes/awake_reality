class CreatePillarsTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :pillars_tasks do |t|
      t.references :pillar, foreign_key: true
      t.references :task, foreign_key: true

      t.timestamps
    end
  end
end
