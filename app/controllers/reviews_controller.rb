class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @consultation = Consultation.find(params[:consultation_id])
    @review = Review.new
    authorize @review
  end

  def create
    @consultation = Consultation.find(params[:consultation_id])
    @review = Review.new(review_params)
    authorize @review
    # review is only reached by consultation
    @consultation.reviews << @review
    if @review.save
      # success
      redirect_to dashboard_index_path
    else
      # failure
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :consultation_id)
  end
end
