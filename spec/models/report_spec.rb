require 'rails_helper'

RSpec.describe Report, type: :model do

  let(:valid_report) { create(:report) }

  describe 'Associations' do
    # Test 01 - Testing the association of Report to User
    it "should belong to User" do
      should belong_to(:user)
    end
  end

  describe 'validations' do
    # Test 02 - Check if Report is valid with the use of FactoryBot
    it "is expected to be valid with valid attributes" do
      report = FactoryBot.create(:report)
      expect(report).to be_valid
    end

    # Test 03 - Check if Report is valid with address, activities, summary
    it "should be valid with address" do
      report = FactoryBot.create(:report)
      expect(report).to be_valid
    end

     # Test 04 - Check if Report is invalid without an address
    it "should be valid with address" do
      report = FactoryBot.build(:report, address: nil)
      expect(report).to_not be_valid
    end

     # Test 05 - Check if Report is invalid without an activies
     it "should be valid with address" do
      report = FactoryBot.build(:report, activities: nil)
      expect(report).to_not be_valid
    end

     # Test 06 - Check if Report is invalid without an summary
     it "should be valid with address" do
      report = FactoryBot.build(:report, summary: nil)
      expect(report).to_not be_valid
    end
  end
end
