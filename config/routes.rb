Spree::Core::Engine.routes.draw do
  namespace :api, :defaults => { :format => 'json'} do
    namespace :v1 do
      resources :products do
        resources :images
        resources :variants
        resources :product_properties
      end

      resources :campaigns do
        resources :products
      end
    end
  end
end
