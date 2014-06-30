class CourseApplicationMailerJob
	include SuckerPunch::Job

  def perform(course_application_id)
    ActiveRecord::Base.connection_pool.with_connection do
	    @course_application = CourseApplication.find(course_application_id)
	    # @referrer = Referrer.find_by(referral_code: referrer)
	    CourseApplicationMailer.response(@course_application).deliver
	    CourseApplicationMailer.received(@course_application).deliver
    end
  end
end