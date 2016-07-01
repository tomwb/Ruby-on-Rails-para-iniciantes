json.array!(@occupations) do |occupation|
  json.extract! occupation, :id, :description
  json.url occupation_url(occupation, format: :json)
end
