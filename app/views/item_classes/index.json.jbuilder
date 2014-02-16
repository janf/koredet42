json.array!(@item_classes) do |item_class|
  json.extract! item_class, :id
  json.url item_class_url(item_class, format: :json)
end
