class Spree::Api::V1::ProductsController < Spree::Api::ProductsController
  def initialize
    @api_version = 1
  end

  def index
    campaign_id = params[:campaign_id]
    if ! campaign_id
      super
    else
      puts "niucha"
      products_bla =  Spree::Campaign.find(campaign_id).products
      puts products_bla.inspect
      @products = products_bla
    end
  end
  
  def show
    if ! params[:campaign_id]
      super
    else
      
    end
  end
end
