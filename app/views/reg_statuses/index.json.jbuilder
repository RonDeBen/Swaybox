json.array!(@reg_statuses) do |reg_status|
  json.extract! reg_status, :id
  json.url reg_status_url(reg_status, format: :json)
end
