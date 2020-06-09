class ConsultationsController < ApplicationController
  before_action :set_consultation, only: [:edit, :update, :destroy]
  def index
    @consultations = Consultation.all
  end

  def show
    @consultation = Consultation.find(params[:id])
    authorize @consultation
  end

  def new
    @consultation = Consultation.new
    @mentor = User.find(params[:mentor_id])
    authorize @consultation
  end

  def create
    @consultation = Consultation.new(consultation_params)
    authorize @consultation
    @consultation.asker = current_user
    @consultation.mentor = User.find(params[:user_id])
    if @consultation.save!
      redirect_to consultation_path(@consultation)
    else
      render :new
    end
  end

  def edit
    set_consultation
  end

  def update
    @user = User.find(consultation_params)
    @consultation.update(consultation_params)
    @consultation.user = @user
    redirect_to dashboard_index_path
    authorize @consultation
  end

  def destroy
    set_consultation
    @consultation.destroy
    redirect_to dashboard_index_path
  end

  private

  def set_consultation
    @consultation = Consultation.find(params[:id])
  end

  def consultation_params
    params.require(:consultation).permit(:mentor_id, :asker_id, :date, :confirmation)
  end
end
