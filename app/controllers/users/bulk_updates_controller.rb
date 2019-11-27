# frozen_string_literal: true

class Users::BulkUpdatesController < ApplicationController
  def index
    @form = UserBulkUpdateForm.new()
  end
end
