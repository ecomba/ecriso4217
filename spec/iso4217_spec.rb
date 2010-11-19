require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe ISO4217 do

  include ISO4217::CurrencyHelper

  EURO_COUNTRIES = [:AD, :AT, :BE, :CY, :DE, :IE, :ES, :FR, :IT, :LU,
                    :MT, :NL, :PT, :SI, :SK, :FI, :GR, :MC, :ME, :SM, :SI]

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

    it "returns the currency code for Afghanistan" do
      currency_code_for(:AF).should == 'AFN'
    end

    it "returns the currency code for Albania" do
      currency_code_for(:AL).should == 'ALL'
    end

    it "returns the currency code for Algeria" do
      currency_code_for(:DZ).should == 'DZD'
    end

    it "returns the currency code for American Samoa" do
      currency_code_for(:AS).should == 'USD'
    end

    it "returns the currency code for Angola" do
      currency_code_for(:AO).should == 'AOA'
    end

    it "returns the currency code for Anguilla" do
      currency_code_for(:AI).should == 'XCD'
    end

    it "returns the currency code for Antigua and Barbuda" do
      currency_code_for(:AG).should == 'XCD'
    end

    it "returns the currency code for Argentina" do
      currency_code_for(:AR).should == 'ARS'
    end

    it "returns the currency code for Armenia" do
      currency_code_for(:AM).should == 'AMD'
    end

    it "returns the currency code for Aruba" do
      currency_code_for(:AW).should == 'AWG'
    end

    it "returns the currency code for Australia" do
      currency_code_for(:AU).should == 'AUD'
    end

    it "returns the currency code for Azerbaijan" do
      currency_code_for(:AZ).should == 'AZN'
    end

    it "returns the currency code for Bahamas" do
      currency_code_for(:BS).should == 'BSD'
    end

    it "returns the currency code for Bulgaria" do
      currency_code_for(:BG).should == 'BGN'
    end

    it "returns the currency code for Bahrain" do
      currency_code_for(:BH).should == 'BHD'
    end

    it "returns the currency code for Bangladesh" do
      currency_code_for(:BD).should == 'BDT'
    end

    it "returns the currency code for Barbados" do
      currency_code_for(:BB).should == 'BBD'
    end

    it "returns the currency code for Czech Republic" do
      currency_code_for(:CZ).should == 'CZK'
    end

    it "returns the currency code for Denmark" do
      currency_code_for(:DK).should == 'DKK'
    end

    it "returns the currency code for Estonia" do
      currency_code_for(:EE).should == 'EEK'
    end

    it "returns the currency code for Latvia" do
      currency_code_for(:LV).should == 'LVL'
    end

    it "returns the currency code for Lithuania" do
      currency_code_for(:LT).should == 'LTL'
    end

    it "returns the currency code for Hungary" do
      currency_code_for(:HU).should == 'HUF'
    end

    it "returns the currency code for Poland" do
      currency_code_for(:PL).should == 'PLN'
    end

    it "returns the currency code for Romania" do
      currency_code_for(:RO).should == 'RON'
    end

    it "returns the currency code for Sweden" do
      currency_code_for(:SE).should == 'SEK'
    end

  end

  context "finding currency codes of unknown countries" do

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

    it "returns the Afghan Afghani sign for Afghanistan" do
      currency_sign_for(:AF).should == "؋"
    end

    it "returns the Albanian Lek sign for Albania" do
      currency_sign_for(:AL).should == "L"
    end

    it "returns the Algerian Dinar sign for Algeria" do
      currency_sign_for(:DZ).should == "د.ج"
    end

    it "returns the dollar sign for American Samoa" do
      currency_sign_for(:AS).should == "$"
    end

    it "returns the Kwanza sign for Angolan kwanza" do
      currency_sign_for(:AO).should == "Kz"
    end

    it "returns the East Carribean Dollar sign for Anguilla" do
      currency_sign_for(:AI).should == "$"
    end

    it "returns the East Carribean Dollar sign for Antigua and Barbuda" do
      currency_sign_for(:AG).should == "$"
    end

    it "returns the Argentine Peso sign for Argentina" do
      currency_sign_for(:AR).should == "$"
    end

    it "returns the Armenian dram sign for Armenia" do
      currency_sign_for(:AM).should == "դր."
    end

    it "returns the Aruban florin sign for Aruba" do
      currency_sign_for(:AW).should == "ƒ"
    end

    it "returns the Australian dollar sign for Australia" do
      currency_sign_for(:AU).should == "$"
    end

    it "returns the Azerbaijan manat sign for Azerbaijan" do
      currency_sign_for(:AZ).should == "man"
    end

    it "returns the Bahamian dollar sign for Bahamas" do
      currency_sign_for(:BS).should == "$"
    end

    it "returns the Bahraini dinar sign for Bahrain" do
      currency_sign_for(:BH).should == "ب.د"
    end

    it "returns the Bangladeshi taka sign for Bangladesh" do
      currency_sign_for(:BD).should == "৳"
    end

    it "returns the Barbados dollar sign for Barbados" do
      currency_sign_for(:BB).should == "$"
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
      [:GB, :UK].each {|country| currency_for(country).should == ISO4217::BRITISH_POUND}
    end

    it "returns the currency object for the dollar if searching for the American currency" do
      currency_for(:US).should == ISO4217::UNITED_STATES_DOLLAR
    end
  end

  context "name of a currency" do
    it "returns the (human readable) name of the euro" do
      ISO4217::EURO.name.should == 'Euro'
    end

    it "returns the (human readable) name of the Canadian dollar" do
      currency_for(:CA).name.should == 'Canadian Dollar'
    end

    it "returns the (human readable) name of the pound sterling" do
      ISO4217::BRITISH_POUND.name.should == 'Pound Sterling'
    end

    it "returns the (human readable) name of the US dollar" do
      ISO4217::UNITED_STATES_DOLLAR.name.should == 'US Dollar'
    end

    it "returns the (human readable) name of the Afghani" do
      ISO4217::AFGHAN_AFGHANI.name.should == 'Afghan Afghani'
    end

    it "returns the (human readable) name of the Albanian Lek" do
      ISO4217::ALBANIAN_LEK.name.should == 'Albanian Lek'
    end

    it "returns the (human readable) name of the Algerian Dinar" do
      ISO4217::ALGERIAN_DINAR.name.should == 'Algerian Dinar'
    end

    it "returns the (human readable) name of the Angolan kwanza" do
      ISO4217::ANGOLAN_KWANZA.name.should == 'Angolan Kwanza'
    end

    it "returns the (human readable) name of the Armenian dram" do
      ISO4217::ARMENIAN_DRAM.name.should == 'Armenian Dram'
    end

    it "returns the (human readable) name of the Aruban florin" do
      ISO4217::ARUBAN_FLORIN.name.should == 'Aruban Florin'
    end

    it "returns the (human readable) name of the Australian dollar" do
      ISO4217::AUSTRALIAN_DOLLAR.name.should == 'Australian Dollar'
    end

    it "returns the (human readable) name of the Azerbaijan manat" do
      ISO4217::AZERBAIJANI_MANAT.name.should == 'Azerbaijani Manat'
    end

    it "returns the (human readable) name of the Bahamian dollar" do
      ISO4217::BAHAMIAN_DOLLAR.name.should == 'Bahamian Dollar'
    end

    it "returns the (human readable) name of the Bahraini dinar" do
      ISO4217::BAHRAINI_DINAR.name.should == 'Bahraini Dinar'
    end

    it "returns the (human readable) name of the Bangladeshi taka" do
      ISO4217::BANGLADESHI_TAKA.name.should == 'Bangladeshi Taka'
    end

    it "returns the (human readable) name of the Barbados dollar" do
      ISO4217::BARBADIAN_DOLLAR.name.should == 'Barbadian Dollar'
    end

  end

  context "printing a curency object" do
    it "prints the currency object for the EURO" do
      ISO4217::EURO.to_s.should == "Code: EUR | Sign: € | Currency: Euro"
    end
  end
end

