#encoding: utf-8

class SessionsController < ApplicationController
  def index
    render 'new'
  end
  def new

  end

  def create
    student = Student.find_by_id_num(params[:session][:id_num])
    if student && student.authenticate(params[:session][:password])
      session[:student_id] = student.id
      redirect_to students_home_path
    else
      flash.now[:error] = '身份证或密码不正确'
      render 'new'
    end


  end

  def destroy
    session[:student_id] = nil
    redirect_to root_url, :notice => "成功退出"

  end
end
