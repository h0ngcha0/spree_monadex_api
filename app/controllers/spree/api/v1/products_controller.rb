class Spree::Api::V1::ProductsController < Spree::Api::ProductsController
  def initialize
    @api_version = 1
  end
end
