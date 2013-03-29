class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    #redirect_to user_url if current_user.voter?
    #redirect_to org_url if current_user.org?
    #redirect_to candidate_url if current_user.candidate?
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
        case params[:usertype]
        when "Voter"
          @voter = @user.voter.create(:display_name => @user.name)
          redirect_to edit_voter_url(@voter)
        when "Organization"
          @org = @user.org.create(:display_name => @user.name)
          redirect_to edit_org_url(@org)
        when "Candidate"
          @candidate = @user.candidate.create(:display_name => @user.name)
          redirect_to edit_candidate_url(@candidate)
        end 
    else
      render 'new'
    end
  end

end
