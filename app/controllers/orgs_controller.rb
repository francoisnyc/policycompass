class OrgsController < ApplicationController
  before_filter :require_org, :except => [:new, :create]

  def index
    @orgs = Orgs.all
  end

  def show
  end

  def new
    @org = Org.new
  end

  def edit
  end 

  def create
    if @org.save
      redirect_to @org, notice: 'Organization was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @org.update_attributes(params[:org])
      redirect_to @org, notice: 'Organization was successfully updated.'
    else
      render action: 'edit'
    end
  end

  private

    def require_org
      @org = Org.find(params[:id])
    end

    def feed
    end

    def dashboard
    end



end
