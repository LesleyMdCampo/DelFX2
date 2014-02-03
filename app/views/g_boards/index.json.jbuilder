json.array!(@g_boards) do |g_board|
  json.extract! g_board, :id, :graphic_id, :image, :place
  json.url g_board_url(g_board, format: :json)
end
