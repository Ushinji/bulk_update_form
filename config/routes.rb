# frozen_string_literal: true

Rails.application.routes.draw do
  get "/users/bulk_update", to: "users/bulk_updates#index"
  put "/users/bulk_update", to: "users/bulk_updates#update"
  resources :users
end
