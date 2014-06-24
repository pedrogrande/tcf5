json.array!(@referral_visits) do |referral_visit|
  json.extract! referral_visit, :id, :referrer_id, :ref_session
  json.url referral_visit_url(referral_visit, format: :json)
end
