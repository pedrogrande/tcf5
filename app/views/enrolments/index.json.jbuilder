json.array!(@enrolments) do |enrolment|
  json.extract! enrolment, :id, :first_name, :last_name, :phone, :email, :address, :suburb, :state, :postcode, :country, :paid, :price, :guid, :stripe_id, :course_id, :intake_id, :payment_id, :special_id
  json.url enrolment_url(enrolment, format: :json)
end
