json.array!(@items) do |item|
  json.extract! item, :id, :repo_id, :item_type_id, :item_region_id, :item_size_id, :item_count
  json.url item_url(item, format: :json)
end
