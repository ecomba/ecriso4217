require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Siff do
  
  include Siff
  
  context "finding currency codes for known countries" do
    it "returns the currency code of Germany" do
      currency_code_for(:DE).should == 'EUR'
    end
    
    it "returns the currency code for the United Kingdom" do
      currency_code_for(:UK).should == 'GBP'
      currency_code_for(:GB).should == 'GBP'
    end
    
    it "returns the currency code for Ireland" do
      currency_code_for(:IE).should == 'EUR'
    end
    
    it "returns the currency code for Bulgaria" do
      currency_code_for(:BG).should == 'EUR'
    end
    
    it "returns the currency code for United States of America" do
      currency_code_for(:US).should == 'USD'
    end
    
    it "returns the currency code for Canada" do
      currency_code_for(:CA).should == 'CAD'
    end
  end

  context "finding currency codes or unknown countries" do
    
    it "returns 'unknown' if it doesn't know the currency" do
      currency_code_for(:MARS).should == 'unknown'
    end
   

    it "returns the requested default currency code if it doesn't know the currency" do
      currency_code_for(:MARS, 'GBP').should == 'GBP'
    end
  end

  context "printing the sign of known currencies" do
    it "returns the euro sign for the german (DE) currency" do
      currency_sign_for(:DE).should == '€'
    end

    it "returns the dollar sign for the American dollar" do
      currency_sign_for(:US).should == '$'
    end

    it "returns the canadian dollar sign for canadian dollars" do
      currency_sign_for(:CA).should == "Can$"
    end
  end

  context "printing the sign for unknown currency" do
    it "returns the generic currency sign for unknown currencies" do
      currency_sign_for(:MARS).should == "¤"
    end
  end
end
