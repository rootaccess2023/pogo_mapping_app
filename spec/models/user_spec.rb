require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations" do

    # Test 01 - Check if User is valid with the use of FactoryBot
    it "is valid with valid attributes" do
      user = FactoryBot.create(:user)
      expect(user).to be_valid
    end

    # Test 02 - Check if User is invalid without an email
    it "is invalid without an email" do
      user = FactoryBot.build(:user, email: nil)
      expect(user).to_not be_valid
      expect(user.errors[:email]).to include("can't be blank")
    end

    # Test 03 - Check if User is valid with an email
    it "is valid with email" do
      user = FactoryBot.create(:user)
      expect(user).to be_valid
    end

    # Test 04 - Check if User is invalid without a password
    it "is invalid without a password" do
      user = FactoryBot.build(:user, password: nil)
      expect(user).to_not be_valid
      expect(user.errors[:password]).to include("can't be blank")
    end

    # Test 05 - Check if User is valid with a password
    it "is valid with a password" do
      user = FactoryBot.create(:user)
      expect(user).to be_valid
    end

    # Test 06 - Check if User is invalid without a password_confirmation
    it "is invalid without a password_confirmation" do
      user = FactoryBot.build(:user, password_confirmation: nil)
      expect(user).to_not be_valid
      expect(user.errors[:password_confirmation]).to include("can't be blank")
    end

    # Test 07 - Check if User is valid with a password_confirmation
    it "is valid with a password_confirmation" do
      user = FactoryBot.create(:user)
      expect(user).to be_valid
    end

    # Test 08 - Check if User's password and password confirmation is mismatched
    it "is invalid with password and password_confirmation is not the same" do
      user = FactoryBot.build(:user, password: "testing123", password_confirmation: "123testing")
      expect(user).to_not be_valid
      expect(user.errors[:password_confirmation]).to include("doesn't match Password")
    end

    # Test 09 - Check if User's password and password confirmation is mismatched using .build
    it "is valid with password and password_confirmation is the same" do
      user = FactoryBot.build(:user, password: "testing123", password_confirmation: "testing123")
      expect(user).to be_valid
    end

    # Test 10 - Check if User's password and password confirmation is mismatched using .create
    it "is valid with password and password_confirmation is the same" do
      user = FactoryBot.create(:user)
      expect(user).to be_valid
    end
  end

  describe "associations" do
    # Test 11 - Testing the association of User to Report
    it "should have many Reports" do
      should have_many(:reports)
    end
  end
end