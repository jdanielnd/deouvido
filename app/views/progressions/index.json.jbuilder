json.array!(@progressions) do |progression|
  json.extract! progression, :id, :description
  json.url progression_url(progression, format: :json)
end
