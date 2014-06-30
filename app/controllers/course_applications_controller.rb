class CourseApplicationsController < ApplicationController
  before_action :set_course_application, only: [:show, :edit, :update, :destroy]
  

  # GET /course_applications
  # GET /course_applications.json
  def index
    @course_applications = CourseApplication.all
  end

  # GET /course_applications/1
  # GET /course_applications/1.json
  def show
  end

  # GET /course_applications/new
  def new
    @course_application = CourseApplication.new
  end

  # GET /course_applications/1/edit
  def edit
  end

  # POST /course_applications
  # POST /course_applications.json
  def create
    @course_application = CourseApplication.new(course_application_params)
    # @course_application.course = @course_application.intake.course

    respond_to do |format|
      if @course_application.save
        format.html { redirect_to thanks_path}
        format.json { render :show, status: :created, location: @course_application }
      else
        format.html { render :new }
        # format.json { render json: @course_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_applications/1
  # PATCH/PUT /course_applications/1.json
  def update
    respond_to do |format|
      if @course_application.update(course_application_params)
        format.html { redirect_to @course_application, notice: 'Course application was successfully updated.' }
        format.json { render :show, status: :ok, location: @course_application }
      else
        format.html { render :edit }
        format.json { render json: @course_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_applications/1
  # DELETE /course_applications/1.json
  def destroy
    @course_application.destroy
    respond_to do |format|
      format.html { redirect_to course_applications_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_application
      @course_application = CourseApplication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_application_params
      params.require(:course_application).permit(:course_id, :intake_id, :first_name, :last_name, :email, :phone, :reason, :experience, :education, :age, :city, :country, :employed, :referral)
    end
end
