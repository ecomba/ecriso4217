require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe ISO4217 do
  
  include ISO4217 

  EURO_COUNTRIES = [:BE, :BG, :CY, :CZ, :DK, :DE, :EE, :IE, :EL, :ES, :FR, :IT, :LV, :LT, :LU, :HU, 
                    :MT, :NL, :AT, :PL, :PT, :RO, :SI, :SK, :FI, :SE] 

  context "finding currency codes for known countries" do
    it "returns the currency euro code of the countries in the euro zone" do
      EURO_COUNTRIES.each do |country|
        currency_code_for(country).should == 'EUR'
      end
    end
    
    it "returns the currency code for the United Kingdom" do
      currency_code_for(:UK).should == 'GBP'
      currency_code_for(:GB).should == 'GBP'
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
      currency_code_for(:MARS).should == 'NAC'
    end
   

    it "returns the requested default currency code if it doesn't know the currency" do
      currency_code_for(:MARS, 'GBP').should == 'GBP'
    end
  end

  context "prints the sign of known currencies" do
    it "returns the euro sign for the countries in the euro zone" do
      EURO_COUNTRIES.each do |country|
        currency_sign_for(country).should == '€'
      end
    end

    it "returns the dollar sign for the American dollar" do
      currency_sign_for(:US).should == '$'
    end

    it "returns the canadian dollar sign for canadian dollars" do
      currency_sign_for(:CA).should == "Can$"
    end
  end

  context "prints the sign for unknown currency" do
    it "returns the generic currency sign for unknown currencies" do
      currency_sign_for(:MARS).should == "¤"
    end
  end

  context "currencies of known countries" do
    it "returns the currency object for Euro if searching for currencies in the euro zone" do
      EURO_COUNTRIES.each do |country|
        currency_for(country).should == ISO4217::EURO
      end
    end

    it "returns the currency object for GBP when searching for the currency in Great Britain" do
      [:GB, :UK].each {|country| currency_for(country).should == ISO4217::GBP}
    end

    it "returns the currency object for the dollar if searching for the American currency" do
      currency_for(:US).should == ISO4217::AMERICAN_DOLLAR
    end
  end

  context "name of a currency" do
    it "returns the (human readable) name of the euro" do
      ISO4217::EURO.name.should == 'euro'
    end

    it "returns the (human readable) name of the Canadian dollar" do
      currency_for(:CA).name.should == 'Canadian dollar'
    end

    it "returns the (human readable) name of the pound sterling" do
      ISO4217::GBP.name.should == 'Pound sterling'
    end

    it "returns the (human readable) name of the US dollar" do
      ISO4217::AMERICAN_DOLLAR.name.should == 'US dollar'
    end
  end

  context "printing a curency object" do
    it "prints the currency object for the EURO" do
      ISO4217::EURO.to_s.should == "Code: EUR | Sign: € | Currency: euro"
    end
  end
end

