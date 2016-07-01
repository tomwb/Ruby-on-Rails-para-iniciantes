json.array!(@children) do |child|
  json.extract! child, :id, :name, :sex, :father_id
  json.url child_url(child, format: :json)
end
