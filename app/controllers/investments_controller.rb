class InvestmentsController < ApplicationController
  before_action :set_investment, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all
	layout "listing"
  def index
    
    @investments = Investment.where(user_id:current_user)

    @total =Investment.where(user_id:current_user).select([:package, :capital]).sum(:capital)
   
     @count =Investment.where(user_id:current_user).count
      @withdrawals = Withdrawal.where(user_id:current_user)
  end

  # GET /listings/1
  def show
      @investment = Investment.find(params[:id])
       @investments = Investment.where(user_id:current_user)

  end

  # GET /listings/new
  def new
    @investment = Investment.new
   
  end

  # GET /listings/1/edit
  def edit
  end

  # POST /listings
  def create
    @investment= current_user.investments.new(investment_params)

    if @investment.save
      
      redirect_to '/investments', notice: 'Investment was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /listings/1
  def update
    if @listing.update(investment_params)
      redirect_to @listing, notice: 'Investment was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /listings/1
  def destroy
    @listing.destroy
    redirect_to listings_url, notice: 'Listing was successfully destroyed.'
  end
  def rent
    @rents = Listing.rent
    @latest = Listing.recent.latest
    @featured = Listing.rand.latest
  end


  def property
    @personal =  current_user
    
    @records = @personal.listings.all if @personal

    @personal ||= current_user



  end 

  private
    # Use callbacks to share common setup or constraints between actions.
     def set_investment
      @investment = Investment.find(params[:id])
    end


    # Only allow a trusted parameter "white list" through.
    def investment_params
      params.require(:investment).permit(:package, :capital)
    end
end
