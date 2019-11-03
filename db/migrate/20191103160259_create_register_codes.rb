class CreateRegisterCodes < ActiveRecord::Migration[6.0]
  def change
    create_table :register_codes do |t|
      t.string :token
      t.belongs_to :interviewer, null: false, foreign_key: true
      t.belongs_to :student, null: false, foreign_key: true
      t.belongs_to :interview, null: false, foreign_key: true

      t.timestamps
    end
  end
end
