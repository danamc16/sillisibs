Sillisibs::Application.routes.draw do
  resources :families
  resources :users

  root 'static_pages#home'

  match '/checkin', to: 'users#signin', via: 'get'
  match '/admin', to: 'users#admin', via: 'get'
  match '/search', to: 'users#search', via: 'get'

end
  