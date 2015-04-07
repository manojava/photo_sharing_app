json.array!(@pictures) do |picture|
  json.extract! picture, :id, :image_url, :name, :description, :place
  json.url picture_url(picture, format: :json)
end
