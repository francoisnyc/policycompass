class StaticPagesController < ApplicationController
  def prelaunch
  end

  def dashboard
  end

  def onboard_questions
    render :layout => "onboarding"
  end

  def index
  end
end
