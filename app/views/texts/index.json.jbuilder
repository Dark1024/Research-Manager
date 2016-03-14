json.array!(@texts) do |text|
  json.extract! text, :id, :researcher_id, :article_id, :author_number
  json.url text_url(text, format: :json)
end
