json.array!(@inventories) do |inventory|
  json.extract! inventory, :id, :description, :name, :price, :quantity
  json.url inventory_url(inventory, format: :json)
end
