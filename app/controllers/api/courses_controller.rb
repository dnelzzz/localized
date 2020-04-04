class Api::CoursesController < ApplicationController
  def index
    @courses = Course.all
    render "index.json.jbuilder"
  end

  def show
    @course = Course.find_by(name: params[:name])
    render "show.json.jbuilder"
  end  
end
