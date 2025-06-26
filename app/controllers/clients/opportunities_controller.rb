class Clients::OpportunitiesController < ApplicationController
  before_action :set_client
  before_action :set_opportunity, only: [:show, :edit, :update, :destroy]

  OPPORTUNITY_STATUSES = ["Lead", "Qualified", "Proposal", "Won", "Lost"]

  def index
    @opportunities = @client.opportunities
  end

  def show
  end

  def new
    @opportunity = @client.opportunities.build
  end

  def create
    @opportunity = @client.opportunities.build(opportunity_params)

    if @opportunity.save
      redirect_to client_opportunity_path(@client, @opportunity), notice: 'Opportunity was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @opportunity.update(opportunity_params)
      redirect_to client_opportunity_path(@client, @opportunity), notice: 'Opportunity was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @opportunity.destroy
    redirect_to client_opportunities_url(@client), notice: 'Opportunity was successfully destroyed.'
  end

  private

  def set_client
    @client = Client.find(params[:client_id])
  end

  def set_opportunity
    @opportunity = @client.opportunities.find(params[:id])
  end

  def opportunity_params
    params.require(:opportunity).permit(:title, :description, :value, :status, :close_date)
  end
end