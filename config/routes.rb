Rails.application.routes.draw do
  get 'notifications/new'
  get 'notifications/index'
  get 'notifications/show'
  get 'notifications/edit'



  resources :notifications do
    collection do
      get :toggle_check
    end
  end




  root 'notifications#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
