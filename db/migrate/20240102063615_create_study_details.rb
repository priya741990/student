class CreateStudyDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :study_details do |t|
      t.string :name
      t.integer :year
      t.string :course_name
      t.references :student, null: false
      t.timestamps
    end
  end
end
