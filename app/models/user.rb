# frozen_string_literal: true

class User < ApplicationRecord
  validates :name, presence: true
  validates :age, numericality: { only_integer: true }
  validates :is_active, inclusion: { in: [true, false] }
end
