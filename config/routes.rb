Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'homes#index'
  
  resources :doctors, only: %i[create new] do
    
    collection do
      get "/sign_in", to: "clearance/sessions#new"
      post "/sessions", to: "sessions#create"
    end
  end

  get "/confirm_email/:token" => "email_confirmations#update", as: "confirm_email"

  namespace "v1" do
    resources :users, except: %i[new edit]
    resources :patients, except: %i[new edit]
    resources :doctors, except: %i[new edit]
    resources :admins, except: %i[new edit]
  end
end
