json.array!(@s_boards) do |s_board|
  json.extract! s_board, :id, :styleboard_id, :image_url, :place
  json.url s_board_url(s_board, format: :json)
end
