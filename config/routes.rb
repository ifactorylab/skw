Rails.application.routes.draw do
  root to: "repos#index"

  resources :item_regions
  resources :item_vintages
  resources :item_sizes
  resources :item_types
  resources :items, except: [:index]
  resources :repos

  scope '/repos' do
    scope '/:id/items' do
      get "(.:format)",          to: 'items#index'
    end
  end

  devise_for :users, controllers: {
    registrations: 'registrations',
    sessions: 'sessions'
  }
end
