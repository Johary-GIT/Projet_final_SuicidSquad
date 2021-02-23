json.extract! product, :id, :title, :price, :content, :category_id, :created_at, :updated_at
json.url product_url(product, format: :json)
