class MentorsController < ApplicationController
  before_action :authenticate_user!

  def index
    @mentors = policy_scope(User).where(mentor: true)
    authorize @mentors
    if params[:query].present?
      sql_query = " \
        users.first_name @@ :query \
        OR users.last_name @@ :query \
        OR users.profession @@ :query \
        OR users.nationality @@ :query \
        OR users.location @@ :query \
        OR users.expertise @@ :query \
      "
      @mentors = User.where(sql_query, query: "%#{params[:query]}%").geocoded
      @searchterm = params[:query]
    else
      @mentors = User.geocoded # returns user with coordinates
      @searchterm = "Mentors"
    end
    @markers = @mentors.map do |mentor|
      {
        lat: mentor.latitude,
        lng: mentor.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { mentor: mentor })
      }
    end
  end

  def show
    @mentor = policy_scope(User).find(params[:id])
    @reviews = Review.joins(:consultation).where(consultations: { mentor_id: @mentor.id })
    authorize @mentor
    @consultation = Consultation.new
    authorize @consultation
  end
end
