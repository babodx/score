class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :id_num
      t.string :name
      t.string :ksh
      t.string :password

      t.timestamps
    end
  end
end
