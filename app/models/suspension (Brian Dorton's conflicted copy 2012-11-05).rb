class Suspension < ActiveRecord::Base
  attr_accessible :administrator, :days, :end_date, :grade, :parent_name, :reason, :start_date, :studen_name, :teacher
end
