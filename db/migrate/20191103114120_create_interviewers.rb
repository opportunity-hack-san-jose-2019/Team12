class CreateInterviewers < ActiveRecord::Migration[6.0]
  def change
    create_table :interviewers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.boolean :vip

      t.timestamps
    end
  end
end
