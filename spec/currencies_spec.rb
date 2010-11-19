require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Currencies" do
  include ISO4217::CurrencyHelper

  context "when searching for a currency" do
    it "returns the british pound" do
      currency(:GBP).should == ISO4217::BRITISH_POUND
    end

    it "returns the United States dollar" do
      currency(:USD).should == ISO4217::UNITED_STATES_DOLLAR
    end

    it "returns the Euro" do
      currency(:EUR).should == ISO4217::EURO
    end

    it "returns the Cayman Islands dollar" do
      currency(:KYD).should == ISO4217::CAYMAN_ISLANDS_DOLLAR
    end

  end
end
