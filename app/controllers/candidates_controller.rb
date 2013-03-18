class CandidatesController < ApplicationController
  before_filter :require_candidate, :except => [:new, :create]

  def new
    @candidate = Candidate.new
  end

  def create
    @candidate = Candidate.create(params[:candidate])

    respond_to do |format|
      if @candidate.save
        format.html  { redirect_to(@candidate,
                      :notice => 'Candidate was successfully created.') }
        format.json  { render :json => @candidate,
                      :status => :created, :location => @candidate }
      else
        format.html  { render :action => "new" }
        format.json  { render :json => @candidate.errors,
                    :status => :unprocessable_entity }
      end
    end
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
      @candidate = User.find(params[:id]).candidate
    end

end
