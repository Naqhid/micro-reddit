json.extract! post, :id, :title, :body, :references, :created_at, :updated_at
json.url post_url(post, format: :json)
