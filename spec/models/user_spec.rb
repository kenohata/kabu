require 'rails_helper'

RSpec.describe User, :type => :model do
  context :new_record? do
    before do
      @user = User.new
    end

    it { expect(@user.valid?).to eq false }

    it do
      @user.email = "ohata@daraf.co.jp"
      @user.password = "password"
      @user.password_confirmation = "password"

      expect(@user.valid?).to eq true
    end
  end
end
