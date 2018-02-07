Rails.application.routes.draw do
  root to: 'static#index'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources :ulicas, param: :id_ulicy
  resources :typs, param: :id_typu
  resources :uzytkowniks, param: :index
  resources :restauracjas, param: :id_restauracji
  resources :obszars, param: :id_obszaru
  resources :produkts, param: :id_produktu
  resources :zamowienies, param: :id_zamowienia
  resources :koszyks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
