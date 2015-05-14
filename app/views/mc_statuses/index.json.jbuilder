json.array!(@mc_statuses) do |mc_status|
  json.extract! mc_status, :id
  json.url mc_status_url(mc_status, format: :json)
end
