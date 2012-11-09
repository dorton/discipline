class Detention < ActiveRecord::Base
  attr_accessible :detention_date, :grade, :parent_name, :reason, :student_name, :teacher, :today, :administrator
end
