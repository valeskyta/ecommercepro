json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :stock, :price, :photo
  json.url product_url(product, format: :json)
end
