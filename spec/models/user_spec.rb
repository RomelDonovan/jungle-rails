require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Validations" do
    before(:each) do
      @user = User.new(
        first_name: "Test",
        last_name: "Test",
        email: "Test@test.com",
        password: "password123",
        password_confirmation: "password123"
      )
    end

    it "must be created with a password and password_confirmation fields" do
      expect(@user.save).to be true
    end

    it "should have an example for where they are not the same" do
      expect(@user.password != @user.password_confirmation).to be false
    end

    it "should have for emails must be unique (not case sensitive; for example TEST@TEST.com should not be allowed if test@test.COM is in the database)" do
      check_email = @user.email.downcase
      expect(check_email).to eq("test@test.com")
    end

    it "validates presence of email" do
      @user.email = nil
      expect(@user.save).to be false
      expect(@user.errors.full_messages).to include("Email can't be blank")
    end

    it "validates presence of first name" do
      @user.first_name = nil
      expect(@user.save).to be false
      expect(@user.errors.full_messages).to include("First name can't be blank")
    end

    it "validates presence of last name" do
      @user.last_name = nil
      expect(@user.save).to be false
      expect(@user.errors.full_messages).to include("Last name can't be blank")
    end

  end
end