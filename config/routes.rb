# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  draw :sidekiq
  root 'sprints#index'
  resources :sprints


end
