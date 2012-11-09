class CreateSuspensions < ActiveRecord::Migration
  def change
    create_table :suspensions do |t|
      t.string :studen_name
      t.string :parent_name
      t.string :teacher
      t.string :grade
      t.string :days
      t.date :start_date
      t.date :end_date
      t.string :administrator
      t.text :reason

      t.timestamps
    end
  end
end
