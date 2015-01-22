json.array!(@products) do |product|
  json.extract! product, :id, :nome, :status, :technology, :source_id
  json.url product_url(product, format: :json)
end
