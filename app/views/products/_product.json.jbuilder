json.extract! product, :id, :id, :price, :title, :description, :created_at, :updated_at
json.url product_url(product, format: :json)
