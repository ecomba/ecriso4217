require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Siff" do
  
  include Siff
  
  context "finding currencies for countries" do
    it "returns the currency of Germany" do
      currency_for(:DE).should == 'EUR'
    end
    
    it "returns the currency for the United Kingdom" do
      currency_for(:UK).should == 'GBP'
      currency_for(:GB).should == 'GBP'
    end
    
    it "returns the currency for Ireland" do
      currency_for(:IE).should == 'EUR'
    end
    
    it "returns the currency for Bulgaria" do
      currency_for(:BG).should == 'EUR'
    end
    
    it "returns the currency for United States of America" do
      currency_for(:US).should == 'USD'
    end
    
    it "returns the currency for Canada" do
      currency_for(:CA).should == 'CAD'
    end
    
    it "returns 'unknown' if it doesn't know the currency" do
      currency_for(:MARS).should == 'unknown'
    end
  end
end
