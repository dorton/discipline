# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Discipline::Application.initialize!

Date::DATE_FORMATS[:default] = "%m/%d/%Y" 