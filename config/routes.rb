# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  draw :sidekiq
  root 'sprints#index'
  resources :sprint_data_column_definitions, only: %i[index show new edit create update destroy]
  resources :sprints, only: %i[new show create index destroy edit update] do
    resources :sprint_data, only: %i[new create index destroy edit update]
  end
end
