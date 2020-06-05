class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    render layout: 'homepage'
  end

  def components
  end
end
