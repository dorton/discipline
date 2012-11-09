class CreateDetentions < ActiveRecord::Migration
  def change
    create_table :detentions do |t|
      t.string :student_name
      t.string :parent_name
      t.date :today
      t.date :detention_date
      t.string :grade
      t.string :teacher
      t.text :reason

      t.timestamps
    end
  end
end
