class ObjectReleasesController < ApplicationController
  before_action :set_object_release, only: [:show, :edit, :update, :destroy]

  # GET /object_releases
  # GET /object_releases.json
  def index
    @object_releases = ObjectRelease.all
  end

  # GET /object_releases/1
  # GET /object_releases/1.json
  def show
  end

  # GET /object_releases/new
  def new
    @object_release = ObjectRelease.new
  end

  # GET /object_releases/1/edit
  def edit
  end

  # POST /object_releases
  # POST /object_releases.json
  def create
    @object_release = ObjectRelease.new(object_release_params)

    respond_to do |format|
      if @object_release.save
        format.html { redirect_to @object_release, notice: 'Object release was successfully created.' }
        format.json { render :show, status: :created, location: @object_release }
      else
        format.html { render :new }
        format.json { render json: @object_release.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /object_releases/1
  # PATCH/PUT /object_releases/1.json
  def update
    respond_to do |format|
      if @object_release.update(object_release_params)
        format.html { redirect_to @object_release, notice: 'Object release was successfully updated.' }
        format.json { render :show, status: :ok, location: @object_release }
      else
        format.html { render :edit }
        format.json { render json: @object_release.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /object_releases/1
  # DELETE /object_releases/1.json
  def destroy
    @object_release.destroy
    respond_to do |format|
      format.html { redirect_to object_releases_url, notice: 'Object release was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_object_release
      @object_release = ObjectRelease.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def object_release_params
      params[:object_release]
    end
end
