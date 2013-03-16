class CandidatesController < ApplicationController
  before_filter :require_candidate, :except => [:new, :create]

  def new
    @candidate = Candidate.new
  end

  def create
    @candidate = Candidate.create(params[:candidate])
  end

  def edit
  end

  def update
    @candidate.update_attributes(params[:candidate])
    redirect_to candidate_path(@candidate)
  end

  def show
  end

  def feed
  end

  def dashboard
  end

  private

    def require_candidate
      @candidate = Candidate.find(params[:id])
    end

end
