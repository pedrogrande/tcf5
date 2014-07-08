class HomeController < ApplicationController
	skip_before_action :authenticate_user!
  def index
  	@info_enquiry = InfoEnquiry.new
  	@course_application = CourseApplication.new
  	@intakes = Intake.future_intakes
  	if session[:ref]
  		@referrer = Referrer.find_by(referral_code: params[:ref])
  	end
  end
end
