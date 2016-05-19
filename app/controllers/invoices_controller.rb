class InvoicesController < ApplicationController
  before_action :set_user

  # GET /invoices
  # GET /invoices.json
  def index
    @invoices = @user.invoices.all
  end

  # GET /invoices/1
  # GET /invoices/1.json
  def show
    @invoice = @user.invoices.find(params[:id])
  end

  # GET /invoices/new
  def new
    @invoice = @user.invoices.new
  end

  # GET /invoices/1/edit
  def edit
    @invoice = @user.invoices.find(params[:id])
  end

  # POST /invoices
  # POST /invoices.json
  def create
    @invoice = @user.invoices.new(invoice_params)

    respond_to do |format|
      if @invoice.save
        format.html { redirect_to user_invoices_path(@user, @invoice), notice: 'Invoice was successfully created.' }
        format.json { render :show, status: :created, location: user_invoices_path(@user, @invoice) }
      else
        format.html { render :new }
        format.json { render json: @invoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /invoices/1
  # PATCH/PUT /invoices/1.json
  def update
    @invoice = @user.invoices.find(params[:id])
    respond_to do |format|
      if @invoice.update(invoice_params)
        format.html { redirect_to([@user, @invoice], notice: 'Invoice was successfully updated.') }
        format.json { render :show, status: :ok, location: @invoice }
      else
        format.html { render :edit }
        format.json { render json: @invoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invoices/1
  # DELETE /invoices/1.json
  def destroy
    @invoice = @user.invoices.find(params[:id])
    @invoice.destroy
    respond_to do |format|
      format.html { redirect_to user_invoices_url(@user), notice: 'Invoice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:user_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def invoice_params
      params.require(:invoice).permit(:rate, :time_sent, :is_paid, :fiat_amt, :recipient, :sender, :user_id, :issuer_id)
    end
end
