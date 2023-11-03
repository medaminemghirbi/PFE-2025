Rails.application.routes.draw do
root to: "static#home"
  namespace :api do
    namespace :v1 do
      namespace :web do
        resources :sessions, only: [:create]
        resources :registrations, only: [:create] do
          member do
            get :confirm_email
          end
        end
        delete :logout, to: "sessions#logout"
        get :logged_in, to: "sessions#logged_in"
      end
    end
  end
end
