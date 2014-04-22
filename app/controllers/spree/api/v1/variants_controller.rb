class Spree::Api::V1::VariantsController < Spree::Api::VariantsController
  def initialize
    @api_version = 1
  end
end
