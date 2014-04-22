class Spree::Api::V1::ImagesController < Spree::Api::ImagesController
  def initialize
    @api_version = 1
  end
end
