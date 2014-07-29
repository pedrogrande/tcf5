class LearnToCodeController < ApplicationController
  skip_before_action :authenticate_user!
  def index
  	@info_enquiry = InfoEnquiry.new
  	@course_application = CourseApplication.new
  	@course = Course.find_by(name: 'Learn To Code')
  	@intakes = Intake.where(course_id: @course.id)
  end
end
