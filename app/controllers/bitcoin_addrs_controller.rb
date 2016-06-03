class BitcoinAddrsController < ApplicationController
  before_action :set_btcinvoice, only: [:index, :new, :create]

  # GET /bitcoin_addrs
  # GET /bitcoin_addrs.json
  def index
    @bitcoin_addrs = @btcinvoice.bitcoin_addrs
  end

  # GET /bitcoin_addrs/1
  # GET /bitcoin_addrs/1.json
  def show
    @bitcoin_addr = BitcoinAddr.find(params[:id])
  end

  # GET /bitcoin_addrs/new
  def new
    @bitcoin_addr = BitcoinAddr.new
  end

  # GET /bitcoin_addrs/1/edit
  def edit
  end

  # POST /bitcoin_addrs
  # POST /bitcoin_addrs.json
  def create
    @bitcoin_addr = BitcoinAddr.new(bitcoin_addr_params)

    respond_to do |format|
      if @bitcoin_addr.save
        format.html { redirect_to @bitcoin_addr, notice: 'Bitcoin addr was successfully created.' }
        format.json { render :show, status: :created, location: @bitcoin_addr }
      else
        format.html { render :new }
        format.json { render json: @bitcoin_addr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bitcoin_addrs/1
  # PATCH/PUT /bitcoin_addrs/1.json
  def update
    respond_to do |format|
      if @bitcoin_addr.update(bitcoin_addr_params)
        format.html { redirect_to @bitcoin_addr, notice: 'Bitcoin addr was successfully updated.' }
        format.json { render :show, status: :ok, location: @bitcoin_addr }
      else
        format.html { render :edit }
        format.json { render json: @bitcoin_addr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bitcoin_addrs/1
  # DELETE /bitcoin_addrs/1.json
  def destroy
    @bitcoin_addr.destroy
    respond_to do |format|
      format.html { redirect_to bitcoin_addrs_url, notice: 'Bitcoin addr was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_btcinvoice
      @btcinvoice = Btcinvoice.find(params[:btcinvoice_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bitcoin_addr_params
      params.require(:bitcoin_addr).permit(:address, :btcinvoice_id, :is_used)
    end
end
