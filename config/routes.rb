MongoidUserstampDemo::Application.routes.draw do

  devise_for :users

  resources :novels


  resources :books
  resources :articles

  devise_for :visitors
  devise_for :admins

  controller :welcome do
    get :index
  end

  root to: 'welcome#index'
end
