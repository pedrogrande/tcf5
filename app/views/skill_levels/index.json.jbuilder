json.array!(@skill_levels) do |skill_level|
  json.extract! skill_level, :id, :name, :summary, :question, :number
  json.url skill_level_url(skill_level, format: :json)
end
