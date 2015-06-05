json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :id_no, :name, :dob, :gender, :sch_name, :sch_code, :county, :phone, :address, :academic, :employed_on, :department, :employer, :employee_num, :email, :parent, :bio
  json.url teacher_url(teacher, format: :json)
end
