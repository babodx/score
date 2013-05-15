class CreateFirstResults < ActiveRecord::Migration
  def change
    create_table :first_results do |t|
      t.string :score
      t.string :result
      t.string :student_id

      t.timestamps
    end
  end
end
