json.array!(@faculties) do |faculty|
  json.extract! faculty, :id, :name, :description, :university_id
  json.url faculty_url(faculty, format: :json)
end
