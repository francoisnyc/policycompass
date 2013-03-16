class OrgsController < ApplicationController
  def index
    @orgs = Orgs.all
  end

  def show
    @org = Org.find(params[:org_id])
  end

  def new
    @org = Org.new
  end

  def edit
    @org = Org.find(params[:org_id])
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
    @org = @org.find(params[:org_id])
    if @org.update_attributes(params[:org])
      redirect_to @org, notice: 'Organization was successfully updated.'
    else
      render action: 'edit'
    end
  end

end
