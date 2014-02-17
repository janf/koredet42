json.array!(@location_classes) do |location_class|
  json.extract! location_class, :id
  json.url location_class_url(location_class, format: :json)
end
