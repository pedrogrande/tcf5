class IosDevelopmentCourseController < ApplicationController
	skip_before_action :authenticate_user!
  def index
  	@info_enquiry = InfoEnquiry.new
  	@course_application = CourseApplication.new
  	@course = Course.find_by(name: 'iOS Development Course')
  	@intakes = Intake.where(course_id: @course.id)
  end
end
