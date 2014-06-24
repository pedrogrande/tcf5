json.array!(@payments) do |payment|
  json.extract! payment, :id, :payment_method, :payment_price, :user_id
  json.url payment_url(payment, format: :json)
end
