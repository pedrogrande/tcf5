class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :set_device_type
  before_action :capture_referral

  private
  def set_device_type
    request.variant = :phone if browser.mobile?
  end

  def capture_referral
    session[:ref] = params[:ref] if params[:ref]
    if ReferralVisit.find_by(ref_session: session[:ref])
      @referral_visit = ReferralVisit.find_by(ref_session: session[:ref])
      @referral_visit.update(updated_at: DateTime.now)
    else
      @referral_visit = ReferralVisit.new
      @referral_visit.referrer = Referrer.find_by(referral_code: params[:ref])
      @referral_visit.ref_session = session[:ref]
      @referral_visit.save
    end
  end
end