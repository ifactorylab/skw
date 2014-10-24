json.array!(@regions) do |item_region|
  json.extract! region, :id, :country, :region, :level
  json.url region_url(region, format: :json)
end
