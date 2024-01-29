class CartTempsController < ApplicationController
  before_action :set_cart_temp, only: %i[ show edit update destroy ]

  # GET /cart_temps or /cart_temps.json
  def index
    @cart_temps = CartTemp.all
  end

  # GET /cart_temps/1 or /cart_temps/1.json
  def show
  end

  # GET /cart_temps/new
  def new
    @cart_temp = CartTemp.new
  end

  # GET /cart_temps/1/edit
  def edit
  end

  # POST /cart_temps or /cart_temps.json
  def create
    @cart_temp = CartTemp.new(cart_temp_params)

    respond_to do |format|
      if @cart_temp.save
        format.html { redirect_to cart_temp_url(@cart_temp), notice: "Cart temp was successfully created." }
        format.json { render :show, status: :created, location: @cart_temp }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cart_temp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cart_temps/1 or /cart_temps/1.json
  def update
    respond_to do |format|
      if @cart_temp.update(cart_temp_params)
        format.html { redirect_to cart_temp_url(@cart_temp), notice: "Cart temp was successfully updated." }
        format.json { render :show, status: :ok, location: @cart_temp }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cart_temp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cart_temps/1 or /cart_temps/1.json
  def destroy
    @cart_temp.destroy

    respond_to do |format|
      format.html { redirect_to cart_temps_url, notice: "Cart temp was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cart_temp
      @cart_temp = CartTemp.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cart_temp_params
      params.require(:cart_temp).permit(:quantity, :abandoned, :item_id)
    end
end
