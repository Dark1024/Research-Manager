json.array!(@conferences) do |conference|
  json.extract! conference, :id, :name, :place, :sponsor, :date
  json.url conference_url(conference, format: :json)
end
