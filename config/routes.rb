Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'statics#home'
  namespace "v1" do
    resources :users, except: %i[new edit]
    resources :patients, except: %i[new edit]
    resources :doctors, except: %i[new edit]
    resources :admins, except: %i[new edit]
  end
end
