json.array!(@mc_puppets) do |mc_puppet|
  json.extract! mc_puppet, :id
  json.url mc_puppet_url(mc_puppet, format: :json)
end
