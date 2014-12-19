class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.boolean :completed
      t.datetime :deadline
      t.datetime :completed_at
      t.references :project, index: true

      t.timestamps
    end
  end
end