Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: redirect('/venues')
  resources :homes
  resources :venues
  resources :types
  resources :info
  resources :results
  resources :images
  resources :firsts
  resources :kibos

  get '/info', to: 'info#index'
  get '/types/:id/select', to: 'types#select', as: 'select'
  get '/images/:id/select', to: 'images#select', as: 'image_select'
  get '/kibos/:id/select', to: 'kibos#select', as: 'kibo_select'
end
