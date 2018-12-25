class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def new
    #code
  end
end
