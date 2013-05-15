class ReExaminationResult < ActiveRecord::Base
  attr_accessible :result, :score, :student_id_num
  belongs_to :student, :foreign_key => "student_id_num", :primary_key => "id_num"
end
