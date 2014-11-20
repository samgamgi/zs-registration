json.array!(@products) do |product|
  json.extract! product, :id, :name, :ParLevelAmount, :PricePerPar
  json.url product_url(product, format: :json)
end
