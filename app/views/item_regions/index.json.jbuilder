json.array!(@item_regions) do |item_region|
  json.extract! item_region, :id, :country, :region, :level
  json.url item_region_url(item_region, format: :json)
end
