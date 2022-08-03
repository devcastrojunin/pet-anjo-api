Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  namespace :api do
    namespace :v1 do
      resources :users
      resources :servicos
      resources :orders
      get '/user_orders/:user_id', to: 'orders#orders_by_user_id'
    end
  end
end
