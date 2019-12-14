# frozen_string_literal: true

require "rails_helper"

RSpec.describe User, type: :model do
  describe "Validation" do
    subject { build(:user) }
    it { should validate_presence_of(:name) }
    it { should validate_numericality_of(:age) }
    it { should allow_value([:true, :false]).for(:is_active) }
  end
end
