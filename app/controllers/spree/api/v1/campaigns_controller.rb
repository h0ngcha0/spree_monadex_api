class Spree::Api::V1::CampaignsController < Spree::Api::BaseController
  def initialize
    @api_version = 1
  end
  
  def index
    if params[:ids]
      @campaigns = Spree::Campaign.where(:id => params[:ids].split(","))
    else
      @campaigns = Spree::Campaign.ransack(params[:q]).result
    end
  end

  def show
    @campaign = Spree::Campaign.find(params[:id])
  end
end
