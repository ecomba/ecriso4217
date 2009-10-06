require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Siff" do
  
  include Siff
  
  context "finding currencies for countries" do
    it "returns the currency of Germany" do
      currency_for(:DE).should == 'EUR'
    end
    
    it "returns the currency for the United Kingdom" do
      currency_for(:GB).should == 'GBP'
    end
  end
end
