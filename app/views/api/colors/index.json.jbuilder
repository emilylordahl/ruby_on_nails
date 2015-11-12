json.array!(@colors) do |color|
  json.extract! color, :id, :name
  json.url api_color_url(color, format: :json)
end
