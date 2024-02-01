class InvoiceTempsController < ApplicationController
  before_action :set_invoice_temp, only: %i[ show edit update destroy ]

  # GET /invoice_temps or /invoice_temps.json
  def index
    @invoice_temps = InvoiceTemp.all
  end

  # GET /invoice_temps/1 or /invoice_temps/1.json
  def show
  end

  # GET /invoice_temps/new
  def new
    @invoice_temp = InvoiceTemp.new
    @cart_temps = CartTemp.all
    @total_cost = CartTemp.total_cost 
  end

  # GET /invoice_temps/1/edit
  def edit
  end

  # POST /invoice_temps or /invoice_temps.json
  def create
    @invoice_temp = InvoiceTemp.new(invoice_temp_params)

    respond_to do |format|
      if @invoice_temp.save
        format.html { redirect_to invoice_temp_url(@invoice_temp), notice: "Invoice temp was successfully created." }
        format.json { render :show, status: :created, location: @invoice_temp }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @invoice_temp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /invoice_temps/1 or /invoice_temps/1.json
  def update
    respond_to do |format|
      if @invoice_temp.update(invoice_temp_params)
        format.html { redirect_to invoice_temp_url(@invoice_temp), notice: "Invoice temp was successfully updated." }
        format.json { render :show, status: :ok, location: @invoice_temp }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @invoice_temp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invoice_temps/1 or /invoice_temps/1.json
  def destroy
    @invoice_temp.destroy

    respond_to do |format|
      format.html { redirect_to invoice_temps_url, notice: "Invoice temp was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invoice_temp
      @invoice_temp = InvoiceTemp.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def invoice_temp_params
      params.require(:invoice_temp).permit(:cliente_name, :total, :value_delivered_customer, :customer_change, :payment_method, :code_cart, :profile_id)
    end
end
