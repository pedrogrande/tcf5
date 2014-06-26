class HomeController < ApplicationController
  def index
  	@info_enquiry = InfoEnquiry.new
  	@course_application = CourseApplication.new
  end
end
