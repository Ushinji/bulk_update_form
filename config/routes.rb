# frozen_string_literal: true

Rails.application.routes.draw do
  get "/users/bulk_update", to: "users/bulk_updates#index"
  post "/users/bulk_update/confirm", to: "users/bulk_updates#confirm"
  put "/users/bulk_update", to: "users/bulk_updates#update"
  resources :users
end
