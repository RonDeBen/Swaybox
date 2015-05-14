json.array!(@wide_statuses) do |wide_status|
  json.extract! wide_status, :id
  json.url wide_status_url(wide_status, format: :json)
end
