class CreateJoinTableInterestsStudents < ActiveRecord::Migration[6.0]
  def change
    create_join_table :interests, :students do |t|
      # t.index [:interest_id, :student_id]
      # t.index [:student_id, :interest_id]
    end
  end
end
