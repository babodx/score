class StudentsController < ApplicationController
  before_filter :authenticate
  def home

  end

  def firstresult
  end

  def reexaminationresult
  end

  def authenticate
    redirect_to signin_path if !current_user
  end


end
