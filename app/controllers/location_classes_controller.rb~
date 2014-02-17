class LocationClassesController < ApplicationController
  before_action :set_location_class, only: [:show, :edit, :update, :destroy]

  # GET /location_classes
  # GET /location_classes.json
  def index
    @location_classes = LocationClass.all
  end

  # GET /location_classes/1
  # GET /location_classes/1.json
  def show
  end

  # GET /location_classes/new
  def new
    @location_class = LocationClass.new
  end

  # GET /location_classes/1/edit
  def edit
  end

  # POST /location_classes
  # POST /location_classes.json
  def create
    @location_class = LocationClass.new(location_class_params)

    respond_to do |format|
      if @location_class.save
        format.html { redirect_to @location_class, notice: 'Location class was successfully created.' }
        format.json { render action: 'show', status: :created, location: @location_class }
      else
        format.html { render action: 'new' }
        format.json { render json: @location_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /location_classes/1
  # PATCH/PUT /location_classes/1.json
  def update
    respond_to do |format|
      if @location_class.update(location_class_params)
        format.html { redirect_to @location_class, notice: 'Location class was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @location_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /location_classes/1
  # DELETE /location_classes/1.json
  def destroy
    @location_class.destroy
    respond_to do |format|
      format.html { redirect_to location_classes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location_class
      @location_class = LocationClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def location_class_params
      params.require(:location_class).permit(:location_class_code, :location_class_name, :physical_location)
    end
end
