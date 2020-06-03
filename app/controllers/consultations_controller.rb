class ConsultationsController < ApplicationController
  before_action :set_consultation, only: [:edit, :update, :destroy]

  def show
    @consultation = Consultation.find(params[:id])
  end

  def new
    @consultation = Consultation.new
  end

  def create
    @consultation = Consultation.new(consultation_params)
    @consultation.user = current_user
    if @consultation.save
      redirect_to consultation_path
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
