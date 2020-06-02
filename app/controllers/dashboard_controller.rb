class DashboardController < ApplicationController
 def index
  @consultation = Consultation.all
end
end

