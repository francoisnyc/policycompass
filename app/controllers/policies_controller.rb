class PoliciesController < ApplicationController

 def index
    @org = Org.find(params[:org_id])
    @policies = @org.policies
  end

  def show
    @policy = Policy.find(params[:id])
  end

  def new
    @policy = Policy.new
  end

  def edit
    @policy = Policy.find(params[:policy_id])
  end 

  def create
    @policy = Policy.new(params[:policy])
    if @policy.save
      redirect_to @policy, notice: 'Policy was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    @policy = @policy.find(params[:policy_id])
    if @policy.update_attributes(params[:policy])
      redirect_to @policy, notice: 'Policy was successfully updated.'
    else
      render action: 'edit'
    end
  end


end
