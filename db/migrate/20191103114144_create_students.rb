class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.float :attendance_score
      t.float :module_score
      t.float :project_score
      t.float :total_score

      t.timestamps
    end
  end
end
