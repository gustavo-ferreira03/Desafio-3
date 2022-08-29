class CreateAttendedSubjects < ActiveRecord::Migration[7.0]
  def change
    create_table :attended_subjects do |t|
      t.string :period
      t.integer :grade
      t.references :subject, null: false, foreign_key: true
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
