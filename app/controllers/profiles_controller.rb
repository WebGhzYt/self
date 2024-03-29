class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @profiles = Profile.all
    respond_with(@profiles)
  end

  def show    
    respond_with(@profile)
  end

  def new
    
    @profile = Profile.new
    respond_with(@profile)
  end

  def edit
  end

  def create
    # params[:user_id]
    @profile = Profile.new(profile_params)
    @profile.save
    respond_with(@profile)
  end

  def update
    @profile.update(profile_params)
    respond_with(@profile)
  end

  def destroy
    @profile.destroy
    respond_with(@profile)
  end

  private
    def set_profile
      @profile = Profile.find(params[:id])
    end

    def profile_params
      params.require(:profile).permit(:name, :fatname, :motname, :gender, :dob, :email, :phone, :image, :user_id)
    end
end
