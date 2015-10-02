json.array!(@centres) do |centre|
  json.extract! centre, :id, :centre_id
  json.url centre_url(centre, format: :json)
end
