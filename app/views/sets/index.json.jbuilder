json.array!(@sets) do |set|
  json.extract! set, :id
  json.url set_url(set, format: :json)
end
