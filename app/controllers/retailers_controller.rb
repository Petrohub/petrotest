class RetailersController < ApplicationController

  before_action :set_retailer, only: [:show, :edit, :update, :destroy]

  def index
    @retailers = Retailer.all
  end

  def new
    @retailer = Retailer.new
  end

  def create
    @retailer = Retailer.new(retailer_params)

    if @retailer.save
      flash[:notice] = "Your account has been created"
      redirect_to @retailer
    else
      flash.now[:alert] = "Account could not be created"
      render "new"
    end
  end

  def edit
  end

  def update
    if @retailer.update
      flash[:notice] = "You have successfully updated your account"
      redirect_to @retailer
    else
      flash.now[:alert] = "Account could not be updated"
      render "edit"
    end
  end

  def destroy
    @retailer.destroy!
    flash[:alert] = "Account has been successfully deleted"
    redirect_to root_path
  end

  private

  def set_retailer
    @retailer = Retailer.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      flash[:alert] = "The retailer you were looking for could not be found."
      redirect_to retailes_path
  end

  def retailer_params
    params.require(:retailer).permit(:first_name, :last_name, :business_name, :address1, :address2, :tax_id, :phone_number, :cell_phone_number, :no_of_gas_stations, :years_in_business, :account_number )
  end


end
