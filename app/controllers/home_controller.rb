class HomeController < ApplicationController
  def index
  	@detention = Detention.new
    @inschool = Inschool.new
    @tardy = Tardy.new
    @suspension = Suspension.new
  end
end
