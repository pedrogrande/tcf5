json.array!(@courses) do |course|
  json.extract! course, :id, :name, :tagline, :intro, :description, :image, :price, :icon, :slug
  json.url course_url(course, format: :json)
end
