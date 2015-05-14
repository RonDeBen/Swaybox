json.array!(@layers) do |layer|
  json.extract! layer, :id
  json.url layer_url(layer, format: :json)
end
