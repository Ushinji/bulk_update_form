# frozen_string_literal: true

class UserBulkUpdateForm
  include ActiveModel::Model
  attr_accessor :users

  def initialize(attributes = {})
    super(attributes)
    self.users = User.all unless self.users
  end

  def users_attributes=(attributes)
    # MEMO: params = {"0"=>{"is_active"=>"true", "id"=>"1"}, "1"=> { ... }, ...
    users = User.where(id: attributes.values.map { |user_attributes| user_attributes[:id].to_i })
    self.users = attributes.values.map do |user_attributes|
      user = users.find { |user| user.id == user_attributes[:id].to_i }
      user.is_active = user_attributes[:is_active]
      user
    end
  end
end