json.array!(@students) do |student|
  json.extract! student, :id, :adm, :name, :dob, :gender, :sch_name, :sch_code, :county, :form, :stream, :dorm, :admitted_on, :previous_sch, :kcpe, :email, :parent, :bio
  json.url student_url(student, format: :json)
end
