json.array!(@schools) do |school|
  json.extract! school, :id, :code, :name, :motto, :logo, :location, :phone, :address, :stype, :bio
  json.url school_url(school, format: :json)
end
