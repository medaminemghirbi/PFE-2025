Rails.application.routes.draw do
  resources :sessions, only: [:create]
  resources :registrations, only: [:create] do
    member do
      get :confirm_email
    end
  end
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  get :municipalities, to: "municipalities#get_all_municipalities"
  get :colors, to: "colors#get_all_colors"
  get 'delegations/:municipalitie_id', to: 'delegations#get_Delegation_by_Municipalities'

end
