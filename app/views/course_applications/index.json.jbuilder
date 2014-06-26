json.array!(@course_applications) do |course_application|
  json.extract! course_application, :id, :course_id, :intake_id, :first_name, :last_name, :email, :phone, :reason, :experience, :education, :age, :city, :country, :employed, :referral
  json.url course_application_url(course_application, format: :json)
end
