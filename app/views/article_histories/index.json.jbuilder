json.array!(@article_histories) do |article_history|
  json.extract! article_history, :id, :article_id, :state_id, :deadline
  json.url article_history_url(article_history, format: :json)
end
