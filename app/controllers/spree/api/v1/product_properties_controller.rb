class Spree::Api::V1::ProductPropertiesController < Spree::Api::ProductPropertiesController
  def initialize
    @api_version = 1
  end
end
