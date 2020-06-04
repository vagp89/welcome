class MentorsController < ApplicationController
  before_action :authenticate_user!

  def index
    @mentors = policy_scope(User).where(mentor: true)
    authorize @mentors
  end

  def show
    @mentor = policy_scope(User).find(params[:id])
    authorize @mentor
  end
end
