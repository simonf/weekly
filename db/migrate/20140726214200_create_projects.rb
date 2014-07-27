class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :code
      t.string :name
      t.date :start
      t.date :end
      t.string :stage
      t.boolean :active

      t.timestamps
    end
  end
end
