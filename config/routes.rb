Rails.application.routes.draw do
  get '/about' => 'static_pages#about'
  root 'static_pages#index'
end
