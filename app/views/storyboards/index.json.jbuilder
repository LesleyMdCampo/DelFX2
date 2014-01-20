json.array!(@storyboards) do |storyboard|
  json.extract! storyboard, :id, :name, :description, :thumbnail_url
  json.url storyboard_url(storyboard, format: :json)
end
