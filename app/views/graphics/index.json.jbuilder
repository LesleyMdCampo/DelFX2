json.array!(@graphics) do |graphic|
  json.extract! graphic, :id, :image, :name, :description, :place
  json.url graphic_url(graphic, format: :json)
end
