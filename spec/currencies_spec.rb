require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Currencies" do
  include ISO4217
  
  context "when searching for a currency" do
    it "returns the british pound" do
      currency(:GBP).should == ISO4217::GBP
    end
    
    it "returns the american dollar" do
      currency("USD").should == ISO4217::AMERICAN_DOLLAR
    end
    
    it "returns the euro... :S " do
      currency(:EUR).should == ISO4217::EURO
    end
  end
end
