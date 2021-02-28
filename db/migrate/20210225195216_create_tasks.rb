class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.integer :employee_id
      t.integer :team_id
      t.string :title
      t.string :type

      t.timestamps
    end
  end
end
