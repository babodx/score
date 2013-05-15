class CreateReExaminationResults < ActiveRecord::Migration
  def change
    create_table :re_examination_results do |t|
      t.string :score
      t.string :result
      t.string :student_id_num

      t.timestamps
    end
  end
end
