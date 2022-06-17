# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/home', to: 'accounts#home'
  get '/shopping-list', to: 'accounts#shopping_list'
  get '/calendar', to: 'accounts#calendar'
  get '/to-do-list', to: 'accounts#to_do_list'
end
