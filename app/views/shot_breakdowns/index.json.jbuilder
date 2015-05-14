json.array!(@shot_breakdowns) do |shot_breakdown|
  json.extract! shot_breakdown, :id
  json.url shot_breakdown_url(shot_breakdown, format: :json)
end
