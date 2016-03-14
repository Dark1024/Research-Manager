json.array!(@articles) do |article|
  json.extract! article, :id, :name, :research_id, :commet, :indexes, :link, :applied, :ammount
  json.url article_url(article, format: :json)
end
