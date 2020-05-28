class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.integer :priority
      t.time :turnaround_time
      t.belongs_to :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
