# frozen_string_literal: true

Rails.application.routes.draw do
  resources :sprint_data_column_definitions
  resources :man_hours
  devise_for :users
  draw :sidekiq
  root 'sprints#index'
  resources :sprints
  resources :sprint_data, only: %i[new create index]
end
