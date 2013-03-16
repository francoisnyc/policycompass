class PoliciesController < ApplicationController

  def index
    @org = Org.find(params[:org_id])
    @policies = @org.policies
  end

  def show
    @policy = Policy.find(params[:id])
  end

  def new
    @org = Org.find(params[:org_id])
    @policy = Policy.new
  end

  def edit
    @policy = Policy.find(params[:id])
    @org = @policy.org
  end 

  def create
    @org = Org.find(params[:org_id])
    @policy = Policy.new(params[:policy])
    @policy.org = @org
    if @policy.save
      redirect_to [@org, @policy], notice: 'Policy was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    @policy = Policy.find(params[:id])
    if @policy.update_attributes(params[:policy])
      redirect_to [@policy.org, @policy], notice: 'Policy was successfully updated.'
    else
      render action: 'edit'
    end
  end

end