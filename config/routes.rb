Realiser::Engine.routes.draw do
  namespace :web do
    resources :settings
  end
  root to: 'web/settings#index'
end
