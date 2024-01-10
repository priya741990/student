class StudyDetailsController < ApplicationController
  before_action :set_study_detail, only: %i[ show edit update destroy ]

  # GET /study_details or /study_details.json
  def index
    @study_details = StudyDetail.all
  end

  # GET /study_details/1 or /study_details/1.json
  def show
  end

  # GET /study_details/new
  def new
    @study_detail = StudyDetail.new
  end

  # GET /study_details/1/edit
  def edit
  end

  # POST /study_details or /study_details.json
  def create
    @study_detail = StudyDetail.new(study_detail_params)

    respond_to do |format|
      if @study_detail.save
        format.html { redirect_to study_detail_url(@study_detail), notice: "Study detail was successfully created." }
        format.json { render :show, status: :created, location: @study_detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @study_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /study_details/1 or /study_details/1.json
  def update
    respond_to do |format|
      if @study_detail.update(study_detail_params)
        format.html { redirect_to study_detail_url(@study_detail), notice: "Study detail was successfully updated." }
        format.json { render :show, status: :ok, location: @study_detail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @study_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /study_details/1 or /study_details/1.json
  def destroy
    @study_detail.destroy

    respond_to do |format|
      format.html { redirect_to study_details_url, notice: "Study detail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_study_detail
      @study_detail = StudyDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def study_detail_params
      params.require(:study_detail).permit(:name, :year, :course_name)
    end
end
