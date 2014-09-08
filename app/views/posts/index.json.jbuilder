json.array!(@posts) do |post|
  json.extract! post, :id, :album_name, :artist, :year, :intention, :description, :image
  json.url post_url(post, format: :json)
end
