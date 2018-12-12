Rails.application.routes.draw do
  get 'homes/index'
  root to: 'homes#index'

  resources :inquiries
  
  get '*path', controller: 'application', action: 'render_404'
end
