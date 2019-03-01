class CreatePillars < ActiveRecord::Migration[5.2]
  def change
    create_table :pillars do |t|
      t.string :name

      t.timestamps
    end
  end
end
