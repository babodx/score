class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
    if session[:student_id]
      @current_user = Student.find_by_id(session[:student_id])
    end

  end


end
