json.array!(@difficulties) do |difficulty|
  json.extract! difficulty, :id
  json.url difficulty_url(difficulty, format: :json)
end
