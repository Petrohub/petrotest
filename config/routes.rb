Rails.application.routes.draw do
 resources :retailers do
   resources :stations
 end
end
