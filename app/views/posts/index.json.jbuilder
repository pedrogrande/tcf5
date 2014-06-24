json.array!(@posts) do |post|
  json.extract! post, :id, :title, :lead, :content, :image, :user_id, :category_id, :slug, :publish, :published_date, :impressions_count
  json.url post_url(post, format: :json)
end
