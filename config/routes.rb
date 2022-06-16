# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/home', to: 'users#home'
  get '/shopping-list', to: 'users#shopping_list'
  get '/calendar', to: 'users#calendar'
  get '/to-do-list', to: 'users#to_do_list'
end
