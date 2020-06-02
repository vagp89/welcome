class ConsultationsController < ApplicationController
  before_action :set_consultation, only: [:edit, :update, :destroy]

  def show
    @consultation = Consultation.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
    @consultation = Consultation.new
  end

  def create
    @user = user.find(params[:user_id])

    @consultation = Consultation.new(consultation_params)
    @consultation.user = @user
    @consultation.user = current_user
    # @consultation.total_price = (@consultation.end_date - @consultation.start_date) * @user.price
    if @consultation.save
      redirect_to user_consultation_path(@user, @consultation)
    else
      render :new
    end
  end

  def edit
    @consultation = Consultation.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @consultation.update(consultation_params)
    @consultation.user = @user
    redirect_to dashboard_index_path
  end

  def destroy
    @consultation = Consultation.find(params[:id])
    @user = User.find(@consultation.user_id)
    @consultation.destroy
    redirect_to dashboard_index_path
  end

  private

  def set_consultation
    @consultation = Consultation.find(params[:id])
  end

  def consultation_params
    params.require(:consultation).permit(:mentor_id, :asker_id)
  end
end

