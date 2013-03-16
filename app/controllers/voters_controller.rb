class VotersController < ApplicationController
  def new
    @voter = Voter.new
  end

  def show
    @voter = Voter.find(params[:voter_id])
  end

  def edit
    @voter = Voter.find(params[:voter_id])
  end

  def create
    @voter = Voter.new(params[:voter])
    if @voter.save
      redirect_to @voter, notice: 'Your profile was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    @voter = @voter.find(params[:voter_id])
    if @voter.update_attributes(params[:voter])
      redirect_to @voter, notice: 'Your profile was successully updated.'
    else
      render action: 'edit'
    end
  end
end
