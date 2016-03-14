json.array!(@researchers) do |researcher|
  json.extract! researcher, :id, :first_name, :last_name, :email, :phone, :office_phone, :faculty_id
  json.url researcher_url(researcher, format: :json)
end
