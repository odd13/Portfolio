Rails.application.routes.draw do
  devise_for :users, :controllers => {:sessions => "sessions", :registrations => "registrations"}
  root 'welcome#index'

  # articles are manually placed into the database via a sql query
  # migration
  # add :create or :update actions as needed

  authenticate :user do
    resources :educations, only: [:new, :create, :edit, :update, :destroy]
  end

  resources :educations, only: [:index, :show]

  resources :articles, only: [:index, :get, :show] do
    resources :comments, only: [:index, :get, :create]
  end
end
