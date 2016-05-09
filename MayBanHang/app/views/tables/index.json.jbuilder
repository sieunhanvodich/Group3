json.array!(@tables) do |table|
  json.extract! table, :id, :title, :description
  json.url table_url(table, format: :json)
end
