# frozen_string_literal: true

class Users::BulkUpdatesController < ApplicationController
  def index
    @form = UserBulkUpdateForm.new()
  end

  def update
    @form = UserBulkUpdateForm.new(form_params)
    @form.save!
    redirect_to users_path, notice: "Updating users is success!"
  end

  private
  def form_params
    params
      .require(:user_bulk_update_form)
      .permit(users_attributes: [:is_active, :id])
  end
end
