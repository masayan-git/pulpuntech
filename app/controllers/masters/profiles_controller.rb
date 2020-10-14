class Masters::ProfilesController < Masters::ApplicationController
  before_action :set_masters_profile, only: [:show, :edit, :update, :destroy]

  # GET /masters/profiles
  # GET /masters/profiles.json
  def index
    @masters_profiles = Profile.all
  end

  # GET /masters/profiles/1
  # GET /masters/profiles/1.json
  def show
  end

  # GET /masters/profiles/new
  def new
    @masters_profile = Profile.new
  end

  # GET /masters/profiles/1/edit
  def edit
  end

  # POST /masters/profiles
  # POST /masters/profiles.json
  def create
    @masters_profile = Profile.new(masters_profile_params)

    respond_to do |format|
      if @masters_profile.save
        format.html { redirect_to masters_profiles_path, notice: 'Profile was successfully created.' }
        format.json { render :show, status: :created, location: @masters_profile }
      else
        format.html { render :new }
        format.json { render json: @masters_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /masters/profiles/1
  # PATCH/PUT /masters/profiles/1.json
  def update
    respond_to do |format|
      if @masters_profile.update(masters_profile_params)
        format.html { redirect_to [:masters,@masters_profile], notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @masters_profile }
      else
        format.html { render :edit }
        format.json { render json: @masters_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /masters/profiles/1
  # DELETE /masters/profiles/1.json
  def destroy
    @masters_profile.destroy
    respond_to do |format|
      format.html { redirect_to masters_profiles_url, notice: 'Profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_masters_profile
      @masters_profile = Profile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def masters_profile_params
      params.require(:profile).permit(:image, :information, :portfolio).merge(master_id: current_master.id)
    end
end
