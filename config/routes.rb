require 'api_constrains'

Spree::Core::Engine.routes.draw do
  namespace :api, :defaults => { :format => 'json'} do
    namespace :v1 do
        resources :products do
          resources :images
          resources :variants
          resources :product_properties
        end

        resources :campaigns

    end
  end
end
