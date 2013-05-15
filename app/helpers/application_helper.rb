#encoding: utf-8
module ApplicationHelper
  def current_user
    if @current_user
      @current_user
    end

  end

  def telphone
    return "64353978、64374282"
  end

  def number_with_precision(number, precision=3)
    "%01.#{precision}f" % ((Float(number)*(10**precision)).round.to_f/10**precision)
  rescue
    number
  end

end
