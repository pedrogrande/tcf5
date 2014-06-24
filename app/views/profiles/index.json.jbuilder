json.array!(@profiles) do |profile|
  json.extract! profile, :id, :name, :phone, :profile_picture, :user_id, :slug, :google_plus, :linkedin, :twitter, :github, :website, :title, :info
  json.url profile_url(profile, format: :json)
end
