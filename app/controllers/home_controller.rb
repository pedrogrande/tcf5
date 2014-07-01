class HomeController < ApplicationController
	skip_before_action :authenticate_user!
  def index
  	@info_enquiry = InfoEnquiry.new
  	@course_application = CourseApplication.new
  end
end
