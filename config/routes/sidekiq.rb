# frozen_string_literal: true

require 'sidekiq/web'

authenticate :user do
  mount Sidekiq::Web => '/sidekiq'
end
