# frozen_string_literal: true

class Users::BulkUpdatesController < ApplicationController
  def index
    @form = UserBulkUpdateForm.new
    @form.users = User.all
  end

  def confirm
    @form = UserBulkUpdateForm.new(form_params)
    return render "users/bulk_updates/index" unless @form.valid?
  end

  def update
    @form = UserBulkUpdateForm.new(form_params)
    return render "users/bulk_updates/index" if params[:back]

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
