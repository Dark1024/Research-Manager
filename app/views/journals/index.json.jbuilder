json.array!(@journals) do |journal|
  json.extract! journal, :id, :name, :company, :link
  json.url journal_url(journal, format: :json)
end
