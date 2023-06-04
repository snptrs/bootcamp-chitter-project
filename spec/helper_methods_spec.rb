require "spec_helper"
require "helper_methods"
require "maker_repository"
require "rack/test"

describe HelperMethods do
  describe '.check_empty' do
    it "returns `false` when any parameter is empty" do
      result = HelperMethods.new.check_empty("", nil, "lorem")
      expect(result).to eq false
    end
  end
  
  describe '.construct_maker' do
    it "returns a new `maker` object" do
      result = HelperMethods.new.create_maker("Name", "email@example.com", "password")
      expect(result.email).to eq("email@example.com")
    end
  end
  
  describe '.create_session' do
    it "starts a new session for the user" do
      # TODO: Method now working properly
    end
  end
end
