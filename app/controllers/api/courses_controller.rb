class Api::CoursesController < ApplicationController
  def index
    @courses = Course.all
    render "index.json.jbuilder"
  end
end
