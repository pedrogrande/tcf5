class EnquiryMailer < ActionMailer::Base
  default from: "Coder Factory Info Pack <info@thecoderfactory.com>"

  def response(info_enquiry_id)
    @info_enquiry = InfoEnquiry.find(info_enquiry_id)
    mail(to: @info_enquiry.email, subject: 'Here is the Application Development course info pack you requested')
  end

  def received(info_enquiry_id)
    @info_enquiry = InfoEnquiry.find(info_enquiry_id)
    mail(to: "info@thecoderfactory.com", subject: 'An application info pack has been requested')
  end
end
