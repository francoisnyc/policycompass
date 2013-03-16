class VotersController < ApplicationController
  before_filter :require_voter, :except => [:new, :create]

  def new
    @voter = Voter.new
  end

  def create
    if @voter.save
      redirect_to @voter, notice: 'Your profile was successfully created.'
    else
      render action: 'new'
    end
  end

  def edit
  end

  def update
    if @voter.update_attributes(params[:voter])
      redirect_to @voter, notice: 'Your profile was successully updated.'
    else
      render action: 'edit'
    end
  end

  def show
  end

  private

    def require_voter
      @voter = Voter.find(params[:id])
    end

    def feed
    end

    def dashboard
    end
end
