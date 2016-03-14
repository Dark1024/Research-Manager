json.array!(@assignments) do |assignment|
  json.extract! assignment, :id, :research_id, :researcher_id, :type_id
  json.url assignment_url(assignment, format: :json)
end
