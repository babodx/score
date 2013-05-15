class FirstResultsController < ApplicationController
  def import
    FirstResult.import(params[:file])
    redirect_to root_url, notice: "Products imported."
  end

  def line
    redirect_to signin_path if !current_user

  end


end
