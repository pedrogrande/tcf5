json.array!(@locations) do |location|
  json.extract! location, :id, :name, :building, :street, :suburb, :state, :postcode, :country, :map_link, :city, :logo, :embed_map, :website, :phone, :image, :slug
  json.url location_url(location, format: :json)
end
