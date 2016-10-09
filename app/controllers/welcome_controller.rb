class WelcomeController < ApplicationController
  layout 'landing_page'
  before_action :authenticate_user!, :only => :thanks
  
  def home
  end

  def thanks
  end
end
