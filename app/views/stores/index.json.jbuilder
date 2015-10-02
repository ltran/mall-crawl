json.array!(@stores) do |store|
  json.extract! store, :id, :store_service_id
  json.url store_url(store, format: :json)
end
