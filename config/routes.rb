Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'user#index'
  post 'user/:id/edit', to: 'user#edit'

  resources :user do 
    resources :toy
  end
end
