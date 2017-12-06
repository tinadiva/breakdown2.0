Rails.application.routes.draw do
  devise_for :users
  resources :projects do
  	resources :milestones do
  		resources :todoitems do 
  			member do
  				patch :complete
  			end
  		end
  	end
  end
  root 'projects#index'
  get 'pages/splash'
  get 'pages/about'
end
