class ItemClassesController < ApplicationController
  before_action :set_item_class, only: [:show, :edit, :update, :destroy]

  # GET /item_classes
  # GET /item_classes.json
  def index
    @item_classes = ItemClass.all
  end

  # GET /item_classes/1
  # GET /item_classes/1.json
  def show
  end

  # GET /item_classes/new
  def new
    @item_class = ItemClass.new
  end

  # GET /item_classes/1/edit
  def edit
  end

  # POST /item_classes
  # POST /item_classes.json
  def create
    @item_class = ItemClass.new(item_class_params)

    respond_to do |format|
      if @item_class.save
        format.html { redirect_to @item_class, notice: 'Item class was successfully created.' }
        format.json { render action: 'show', status: :created, location: @item_class }
      else
        format.html { render action: 'new' }
        format.json { render json: @item_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /item_classes/1
  # PATCH/PUT /item_classes/1.json
  def update
    respond_to do |format|
      if @item_class.update(item_class_params)
        format.html { redirect_to @item_class, notice: 'Item class was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @item_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_classes/1
  # DELETE /item_classes/1.json
  def destroy
    @item_class.destroy
    respond_to do |format|
      format.html { redirect_to item_classes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_class
      @item_class = ItemClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_class_params
      params.require(:item_class).permit(:item_class_code, :item_class_name)
    end
end
