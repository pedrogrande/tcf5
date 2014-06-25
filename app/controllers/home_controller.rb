class HomeController < ApplicationController
  def index
  	@info_enquiry = InfoEnquiry.new
  end
end
