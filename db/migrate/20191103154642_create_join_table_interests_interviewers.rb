class CreateJoinTableInterestsInterviewers < ActiveRecord::Migration[6.0]
  def change
    create_join_table :interests, :interviews do |t|
      t.index [:interest_id, :interview_id]
      t.index [:interview_id, :interest_id]
    end
  end
end
