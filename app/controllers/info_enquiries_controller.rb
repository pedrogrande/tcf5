class InfoEnquiriesController < ApplicationController
  before_action :set_info_enquiry, only: [:show, :edit, :update, :destroy]

  # GET /info_enquiries
  # GET /info_enquiries.json
  def index
    @info_enquiries = InfoEnquiry.all
  end

  # GET /info_enquiries/1
  # GET /info_enquiries/1.json
  def show
  end

  # GET /info_enquiries/new
  def new
    @info_enquiry = InfoEnquiry.new
  end

  # GET /info_enquiries/1/edit
  def edit
  end

  # POST /info_enquiries
  # POST /info_enquiries.json
  def create
    @info_enquiry = InfoEnquiry.new(info_enquiry_params)

    respond_to do |format|
      if @info_enquiry.save
        InfoEnquiryMailerJob.new.async.perform(@info_enquiry.id)
        format.html { redirect_to :back }
        format.json { render :show, status: :created, location: @info_enquiry }
      
      end
    end
  end

  # PATCH/PUT /info_enquiries/1
  # PATCH/PUT /info_enquiries/1.json
  def update
    respond_to do |format|
      if @info_enquiry.update(info_enquiry_params)
        format.html { redirect_to @info_enquiry, notice: 'Info enquiry was successfully updated.' }
        format.json { render :show, status: :ok, location: @info_enquiry }
      else
        format.html { render :edit }
        format.json { render json: @info_enquiry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /info_enquiries/1
  # DELETE /info_enquiries/1.json
  def destroy
    @info_enquiry.destroy
    respond_to do |format|
      format.html { redirect_to info_enquiries_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_info_enquiry
      @info_enquiry = InfoEnquiry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def info_enquiry_params
      params.require(:info_enquiry).permit(:email, :referrer_id, :first_name)
    end
end
