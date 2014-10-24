json.array!(@item_vintages) do |item_vintage|
  json.extract! item_vintage, :id, :year
  json.url item_vintage_url(item_vintage, format: :json)
end
