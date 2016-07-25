json.array!(@addresses) do |address|
  json.extract! address, :id, :street, :zip, :customer_id
  json.url address_url(address, format: :json)
end
