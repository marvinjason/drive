Rails.application.routes.draw do

  root 'pages#index'
  get 'pages/index'
  get ':controller(/:action)'

  namespace :api do
  	namespace :v1 do
  		resources :reports, only: [:index, :create]
  	end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
