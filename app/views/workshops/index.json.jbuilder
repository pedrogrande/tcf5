json.array!(@workshops) do |workshop|
  json.extract! workshop, :id, :name, :tagline, :description, :duration_minutes, :icon, :skill_group_id, :workshop_code, :active, :slug, :outcome, :objectives, :benefits, :skill_level_id
  json.url workshop_url(workshop, format: :json)
end
