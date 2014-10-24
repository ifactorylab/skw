json.array!(@item_sizes) do |item_size|
  json.extract! item_size, :id, :name, :amount
  json.url item_size_url(item_size, format: :json)
end
