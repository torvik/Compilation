json.array!(@sources) do |source|
  json.extract! source, :id, :nome, :status
  json.url source_url(source, format: :json)
end
