json.array!(@boards) do |board|
  json.extract! board, :id, :storyboard_id, :image_url, :place
  json.url board_url(board, format: :json)
end
