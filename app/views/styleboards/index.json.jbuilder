json.array!(@styleboards) do |styleboard|
  json.extract! styleboard, :id, :description, :image, :place, :name
  json.url styleboard_url(styleboard, format: :json)
end
