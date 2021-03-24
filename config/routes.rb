Rails.application.routes.draw do
  root 'links#new'
  get '/:short_url', to: 'links#redirect'
  resources :links, only: [:new, :create, :show]
end
