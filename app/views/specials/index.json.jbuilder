json.array!(@specials) do |special|
  json.extract! special, :id, :admin_id, :recipient_email, :course_id, :intake_id, :dollar_discount, :percent_discount, :guid, :date_redeemed
  json.url special_url(special, format: :json)
end
