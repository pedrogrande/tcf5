class InfoEnquiryMailerJob
	include SuckerPunch::Job

  def perform(info_enquiry_id)
    ActiveRecord::Base.connection_pool.with_connection do
	    # @referrer = Referrer.find_by(referral_code: referrer)
	    EnquiryMailer.response(info_enquiry_id).deliver
	    EnquiryMailer.received(info_enquiry_id).deliver
    end
  end
end