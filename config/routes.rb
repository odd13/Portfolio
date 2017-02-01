Rails.application.routes.draw do
  root 'welcome#index'

  # articles are manually placed into the database via a sql query
  # migration
  # add :create or :update actions as needed
  resources :articles, only: [:index, :get, :show] do
    resources :comments, only: [:index, :get, :create]
  end
end
