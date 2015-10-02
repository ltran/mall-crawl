json.array!(@highlights) do |highlight|
  json.extract! highlight, :id, :name, :description, :store_id
  json.url highlight_url(highlight, format: :json)
end
