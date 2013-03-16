class OrgsController < ApplicationController
  before_filter :require_org, :except => [:index, :new, :create]

  def index
    @orgs = Org.all
  end

  def show
  end

  def new
    @org = Org.new
  end

  def edit
  end 

  def create
    @org = Org.new(params[:org])

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

  def dashboard
  end

  private

    def require_org
      @org = Org.find(params[:id])
    end



end
