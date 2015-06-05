json.array!(@parents) do |parent|
  json.extract! parent, :id, :id_num, :name, :photo, :county, :phone, :address, :gender, :ptype, :bio
  json.url parent_url(parent, format: :json)
end
