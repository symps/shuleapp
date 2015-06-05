json.array!(@staffs) do |staff|
  json.extract! staff, :id, :id_num, :name, :sch_name, :sch_code, :photo, :county, :phone, :address, :gender, :job, :staff_id, :academic, :bio
  json.url staff_url(staff, format: :json)
end
