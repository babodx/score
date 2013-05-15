class ChangeFirstResults < ActiveRecord::Migration
  def up
    add_column :first_results, :student_id_num, :string
    remove_column :first_results, :student_id
  end

  def down
  end
end
