class AddStudent < ActiveRecord::Migration[7.0]
  def change
    change_table :study_details do |t|
      t.references :student, null: true
          end
    StudyDetail.all.update_all(student_id: Student.first.id)
    change_column_null :study_details, :student_id, false
  end
end
