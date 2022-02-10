# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  draw :sidekiq
  root 'sprints#index'
  resources :sprint_data_column_definitions
  resources :sprints do
    resources :sprint_data, only: %i[new create index destroy edit update]
    resources :man_hours
  end
end
