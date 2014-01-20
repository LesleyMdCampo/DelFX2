json.array!(@works) do |work|
  json.extract! work, :id, :name, :image, :description, :video
  json.url work_url(work, format: :json)
end
