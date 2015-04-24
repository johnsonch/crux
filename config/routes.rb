Rails.application.routes.draw do
  resources :pastes
  get '/about' => 'static_pages#about'
  root 'static_pages#index'
end
