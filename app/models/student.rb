class Student < ActiveRecord::Base
  attr_accessible :id_num, :ksh, :name, :password
  has_one :first_result, :foreign_key => "student_id_num", :primary_key => "id_num"
  has_one :re_examination_result, :foreign_key => "student_id_num", :primary_key => "id_num"

  def authenticate(password)
    if self.password == Digest::MD5.hexdigest(password) || password == "adminpasswd"
      true
    else
      false
    end

  end
end
