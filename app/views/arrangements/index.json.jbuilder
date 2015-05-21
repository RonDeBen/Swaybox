json.array!(@arrangements) do |arrangement|
  json.extract! arrangement, :id
  json.url arrangement_url(arrangement, format: :json)
end
