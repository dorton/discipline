class Tardy < ActiveRecord::Base
  attr_accessible :parent_address, :parent_name, :studen_first_name, :student_last_name, :tardy_days
end
