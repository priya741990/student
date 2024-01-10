json.extract! study_detail, :id, :name, :year, :course_name, :created_at, :updated_at
json.url study_detail_url(study_detail, format: :json)
