require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Currencies" do
  include ISO4217
  
  context "when searching for a currency" do
    it "returns the albanian leke" do
      currency(:ALL).should == ISO4217::ALBANIAN_LEKE
    end

    it "returns the american dollar" do
      currency("USD").should == ISO4217::AMERICAN_DOLLAR
    end

    it "returns the afghani" do
      currency(:AFN).should == ISO4217::AFGHANI
    end

    it "returns the argentinian peso" do
      currency(:ARS).should == ISO4217::ARGENTINA_PESOS
    end

    it "returns the arubane guilder" do
      currency(:AWG).should == ISO4217::ARUBAN_GUILDER
    end

    it "returns the australian dollar" do
      currency(:AUD).should == ISO4217::AUSTRALIAN_DOLLAR
    end

    it "returns the azerbaijanian manat" do
      currency(:AZN).should == ISO4217::AZERBAIJANIAN_MANAT
    end

    it "returns the bahamian dollar" do
      currency(:BSD).should == ISO4217::BAHAMAS_DOLLAR
    end

    it "returns the barbados dollar" do
      currency(:BBD).should == ISO4217::BARBADOS_DOLLAR
    end

    it "returns the belarusian ruble" do
      currency(:BYR).should == ISO4217::BELARUS_RUBLE
    end

    it "returns the belize dollar" do
      currency(:BZD).should == ISO4217::BELIZE_DOLLAR
    end

    it "returns the bermudian dollar" do
      currency(:BMD).should == ISO4217::BERMUDA_DOLLARS
    end

    it "returns the boliviano" do
      currency(:BOB).should == ISO4217::BOLIVIA_BOLIVIANOS
    end

    it "returns the convertible marks" do
      currency(:BAM).should == ISO4217::CONVERTIBLE_MARKA
    end

    it "returns the pula" do
      currency(:BWP).should == ISO4217::BOTSWANA_PULAS
    end

    it "returns the bulgarian lev" do
      currency(:BGN).should == ISO4217::BULGARIAN_LEVA
    end

    it "returns the brazilian real" do
      currency(:BRL).should == ISO4217::BRAZILIAN_REAL
    end

    it "returns the british pound" do
      currency(:GBP).should == ISO4217::BRITAIN_POUND
    end

    it "returns the brunei dollar" do
      currency(:BND).should == ISO4217::BRUNEI_DARUSSALAM_DOLLAR
    end

    it "returns the cambodian cambodian riel" do
      currency(:KHR).should == ISO4217::CAMBODIAN_RIELS
    end

    it "returns the canadian dollar" do
      currency(:CAD).should == ISO4217::CANADIAN_DOLLAR
    end

    it "returns the Cayman Islands dollar" do
      currency(:KYD).should == ISO4217::CAYMAN_ISLANDS_DOLLARS
    end

    it "returns the chilean peso" do
      currency(:CLP).should == ISO4217::CHILE_PESOS
    end

    it "returns the chinese yuan" do
      currency(:CNY).should == ISO4217::CHINA_YUAN_RENMINBI
    end

    it "returns the colombian peso" do
      currency(:COP).should == ISO4217::COLOMBIAN_PESO
    end
    
    it "returns the Costa Rican colon" do
      currency(:CRC).should == ISO4217::COSTA_RICA_COLON
    end

    it "returns the croatian kuna" do
      currency(:HRK).should == ISO4217::CROATIAN_KUNA
    end

    it "returns the cuban peso" do
      currency(:CUP).should == ISO4217::CUBA_PESOS
    end

    it "returns the czech koruna" do
      currency(:CZK).should == ISO4217::CZECH_KORUNA
    end

    it "returns the denmark kroner" do
      currency(:DKK).should == ISO4217::DENMARK_KRONER
    end

    it "returns the dominican republic peso" do
      currency(:DOP).should == ISO4217::DOMINICAN_REPUBLIC_PESOS
    end
    
    it "returns the euro... :S " do
      currency(:EUR).should == ISO4217::EURO
    end
  end
end
