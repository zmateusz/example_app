json.array!(@orders) do |order|
  json.extract! order, :id, :amount, :product_price, :product_id
  json.url order_url(order, format: :json)
end
