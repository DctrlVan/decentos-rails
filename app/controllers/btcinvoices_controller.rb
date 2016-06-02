class BtcinvoicesController < ApplicationController
  before_action :set_user, only: [:index, :new, :create]

  # GET /invoices
  # GET /invoices.json
  def index
    @btcinvoices = @user.btcinvoices.all
  end

  # GET /invoices/1
  # GET /invoices/1.json
  def show
    @btcinvoice = Btcinvoice.find(params[:id])
  end

  # GET /invoices/new
  def new
    @btcinvoice = @user.btcinvoices.new
  end

  # GET /invoices/1/edit
  def edit
    @btcinvoice = Btcinvoice.find(params[:id])
  end

  # POST /invoices
  # POST /invoices.json
  def create
    @btcinvoice = @user.btcinvoices.new(btcinvoice_params)

    respond_to do |format|
      if @btcinvoice.save
        format.html { redirect_to user_btcinvoices_path(@user, @btcinvoice),
                      notice: 'Invoice was successfully created.' }
        format.json { render :show, status: :created,
                      location: user_btcinvoices_path(@user, @btcinvoice) }
      else
        format.html { render :new }
        format.json { render json: @btcinvoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /invoices/1
  # PATCH/PUT /invoices/1.json
  def update
    @btcinvoice = @user.btcinvoices.find(params[:id])
    respond_to do |format|
      if @btcinvoice.update(btcinvoice_params)
        format.html { redirect_to([@user, @btcinvoice],
                                  notice: 'Invoice was successfully updated.') }
        format.json { render :show, status: :ok, location: @btcinvoice }
      else
        format.html { render :edit }
        format.json { render json: @btcinvoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invoices/1
  # DELETE /invoices/1.json
  def destroy
    @btcinvoice = @user.btcinvoices.find(params[:id])
    @btcinvoice.destroy
    respond_to do |format|
      format.html { redirect_to user_btcinvoices_url(@user),
                    notice: 'Invoice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:user_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def btcinvoice_params
      params.require(:btcinvoice).permit(:rate, :time_sent, :is_paid, :fiat_amt, :user_id, :issuer_id)
    end
end
