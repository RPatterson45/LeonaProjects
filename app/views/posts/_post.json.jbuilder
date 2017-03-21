json.extract! post, :id, :title, :content, :posted, :image_url, :created_at, :updated_at
json.url post_url(post, format: :json)
