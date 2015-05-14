json.array!(@wardrobes) do |wardrobe|
  json.extract! wardrobe, :id
  json.url wardrobe_url(wardrobe, format: :json)
end
