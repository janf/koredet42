json.array!(@items) do |item|
  json.extract! item, :id, :itemtype, :itemname, :isunique, :appxvalue
  json.url item_url(item, format: :json)
end
