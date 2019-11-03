class AddCheckedInInterviewerAndCheckedInStudent < ActiveRecord::Migration[6.0]
  def change
    add_column :interviews, :checked_in_interviewer, :boolean
    add_column :interviews, :checked_in_student, :boolean
  end
end
