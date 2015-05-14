json.array!(@wide_puppets) do |wide_puppet|
  json.extract! wide_puppet, :id
  json.url wide_puppet_url(wide_puppet, format: :json)
end
