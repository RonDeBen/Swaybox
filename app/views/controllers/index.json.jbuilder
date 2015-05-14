json.array!(@controllers) do |controller|
  json.extract! controller, :id, :McPuppet
  json.url controller_url(controller, format: :json)
end
