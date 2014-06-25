json.array!(@info_enquiries) do |info_enquiry|
  json.extract! info_enquiry, :id, :email, :referrer_id, :first_name
  json.url info_enquiry_url(info_enquiry, format: :json)
end
