class CreateTardies < ActiveRecord::Migration
  def change
    create_table :tardies do |t|
      t.string :studen_first_name
      t.string :student_last_name
      t.string :parent_name
      t.string :parent_address
      t.text :tardy_days

      t.timestamps
    end
  end
end
