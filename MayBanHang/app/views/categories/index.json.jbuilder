json.array!(@categories) do |category|
  json.extract! category, :id, :content, :description
  json.url category_url(category, format: :json)
end
