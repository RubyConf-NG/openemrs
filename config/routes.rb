Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  post "/graphql", to: "graphql#execute"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'homes#index'
  
  resources :doctors, only: %i[create new] do
    
    collection do
      get "/sign_in", to: "clearance/sessions#new"
      post "/sessions", to: "sessions#create"
    end
  end
  
  resources :patients, only: %i[new create update edit]

  namespace "v1" do
    resources :users, except: %i[new edit]
    resources :patients, except: %i[new edit]
    resources :doctors, except: %i[new edit]
    resources :admins, except: %i[new edit]
    resources :biometrics, except: %i[new edit]
  end
end
