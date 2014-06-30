class CourseApplicationMailer < ActionMailer::Base
  default from: "Coder Factory Application <info@thecoderfactory.com>"

  def response(course_application)
    @course_application = course_application
    mail(to: @course_application.email, subject: @course_application.first_name + ", your Coder Factory application has been received")
  end

  def received(course_application)
    @course_application = course_application
    mail(to: "info@thecoderfactory.com", subject: "Coder Factory Application Received")
  end
end
