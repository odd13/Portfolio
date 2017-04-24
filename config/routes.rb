Rails.application.routes.draw do
  devise_for :users, :controllers => {:sessions => "sessions", :registrations => "registrations"}, skip: [:registrations]
  #devise_for :users, skip: [:registrations]
  root 'welcome#index'

  # articles are manually placed into the database via a sql query
  # migration
  # add :create or :update actions as needed

  authenticate :user do
    resources :educations, only: [:new, :create, :edit, :update, :destroy, :index, :show]
    resources :industries, only: [:new, :create, :edit, :update, :destroy, :index, :show]
    resources :disciplines, only: [:new, :create, :edit, :update, :destroy, :index, :show]
    resources :interests, only: [:new, :create, :edit, :update, :destroy, :index, :show]
    resources :skills, only: [:new, :create, :edit, :update, :destroy, :index, :show]
    resources :articles, only: [:new, :create, :edit, :update, :destroy]
  end

  resources :articles, only: [:index, :get, :show] do
    resources :comments, only: [:index, :get, :create]
  end
end
