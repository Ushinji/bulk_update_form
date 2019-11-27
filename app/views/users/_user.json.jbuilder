# frozen_string_literal: true

json.extract! user, :id, :name, :age, :is_active, :created_at, :updated_at
json.url user_url(user, format: :json)
