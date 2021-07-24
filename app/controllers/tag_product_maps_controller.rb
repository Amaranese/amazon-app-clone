class TagProductMapsController < ApplicationController
  before_action :set_tag_product_map, only: [:show, :edit, :update, :destroy]

  # GET /tag_product_maps
  # GET /tag_product_maps.json
  def index
    @tag_product_maps = TagProductMap.all
  end

  # GET /tag_product_maps/1
  # GET /tag_product_maps/1.json
  def show
  end

  # GET /tag_product_maps/new
  def new
    @tag_product_map = TagProductMap.new
  end

  # GET /tag_product_maps/1/edit
  def edit
  end

  # POST /tag_product_maps
  # POST /tag_product_maps.json
  def create
    @tag_product_map = TagProductMap.new(tag_product_map_params)

    respond_to do |format|
      if @tag_product_map.save
        format.html { redirect_to @tag_product_map, notice: 'Tag product map was successfully created.' }
        format.json { render :show, status: :created, location: @tag_product_map }
      else
        format.html { render :new }
        format.json { render json: @tag_product_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tag_product_maps/1
  # PATCH/PUT /tag_product_maps/1.json
  def update
    respond_to do |format|
      if @tag_product_map.update(tag_product_map_params)
        format.html { redirect_to @tag_product_map, notice: 'Tag product map was successfully updated.' }
        format.json { render :show, status: :ok, location: @tag_product_map }
      else
        format.html { render :edit }
        format.json { render json: @tag_product_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tag_product_maps/1
  # DELETE /tag_product_maps/1.json
  def destroy
    @tag_product_map.destroy
    respond_to do |format|
      format.html { redirect_to tag_product_maps_url, notice: 'Tag product map was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tag_product_map
      @tag_product_map = TagProductMap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tag_product_map_params
      params.require(:tag_product_map).permit(:tag_id, :product_id)
    end
end
