class Api::CoursesController < ApplicationController
  def index
    @courses = Course.all
    render "index.json.jbuilder"
  end

  def create
    @course = Course.new(
      name: params[:name],
      image_url: params[:image_url]
    )
    @course.save
    render "show.json.jbuilder"
  end

  def show
    @course = Course.find_by(name: params[:name])
    render "show.json.jbuilder"
  end  

  def update
    @course = Course.find_by(name: params[:name])
    @course.name = params[:name] || @course.name
    @course.image_url = params[:image_url] || @course.image_url
    @course.save
    render "show.json.jbuilder"
  end

  def destroy
    @course = Course.find_by(name: params[:name])
    @course.destroy
  end
end
