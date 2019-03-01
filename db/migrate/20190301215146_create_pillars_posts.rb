class CreatePillarsPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :pillars_posts do |t|
      t.references :pillar, foreign_key: true
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
