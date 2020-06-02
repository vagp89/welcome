class ReviewsController < ApplicationController
  def new
    @consultation = Consultation.find(params[:consultation_id])
    @review = Review.new
  end  
  
  def create
    @consultation = Consultation.find(params[:consultation_id])
    @review = Review.new(review_params)
    
    # review is only reached by consultation
    @review.consultation = @consultation
    
    if @review.save
      # success
      redirect_to consultation_path(@consultation)
    else
      # failure
      render :new
    end
  end

  private
  
  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
