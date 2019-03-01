class CreatePillarsTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :pillars_topics do |t|
      t.references :topic, foreign_key: true
      t.references :pillar, foreign_key: true

      t.timestamps
    end
  end
end
