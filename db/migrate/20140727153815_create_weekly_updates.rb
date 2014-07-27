class CreateWeeklyUpdates < ActiveRecord::Migration
  def change
    create_table :weekly_updates do |t|
      t.references :project, index: true
      t.references :person, index: true
      t.date :weekstart
      t.string :rag
      t.integer :percent
      t.text :comment

      t.timestamps
    end
  end
end
