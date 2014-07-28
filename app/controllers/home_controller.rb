class HomeController < ApplicationController
	skip_before_action :authenticate_user!
  def index
  	@info_enquiry = InfoEnquiry.new
  	@course_application = CourseApplication.new
  	@course = Course.find_by(name: 'Application Development')
  	@intakes = Intake.future_intakes.where('course_id == ?', @course.id)
  	if session[:ref]
  		@referrer = Referrer.find_by(referral_code: params[:ref])
  	end
  end
end
