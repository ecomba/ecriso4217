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

    it "returns the east caribbean dollars" do
      currency(:XCD).should  == ISO4217::EAST_CARIBBEAN_DOLLAR
    end

    it "returns the egypt pound" do
      currency(:EGP).should == ISO4217::EGYPT_POUND
    end
    
    it "returns the salvador colon" do
     currency(:SVC).should == ISO4217::EL_SALVADOR_COLON
    end

    it "returns the estonian krooni" do
      currency(:EEK).should == ISO4217::ESTONIAN_KROONI
    end

    it "returns the euro " do
      currency(:EUR).should == ISO4217::EURO
    end

    it "returns the falkland islands pound" do
      currency(:FKP).should == ISO4217::FALKLAND_ISLANDS_POUND
    end

    it "returns the fiji dollar" do
      currency(:FJD).should == ISO4217::FIJI_DOLLAR
    end

    it "returns the ghana cedi" do
      currency(:GHC).should == ISO4217::GHANA_CEDI
    end

    it "returns the gibraltar pound" do
      currency(:GIP).should == ISO4217::GIBRLATAR_POUND
    end

    it "returns the guatemala quetzales" do
      currency(:GTQ).should == ISO4217::GUATEMALA_QUEZALES
    end

    it "returns the guernsey pound" do
      currency(:GGP).should == ISO4217::GUERNSEY_POUND
    end

    it "returns the guyana dollar" do
      currency(:GYD).should == ISO4217::GUYANA_DOLLAR
    end

    it "returns the honduras lempiras" do
      currency(:HNL).should == ISO4217::HONDURAS_LEMPIRAS
    end

    it "returns the hong kong dollar" do
      currency(:HKD).should == ISO4217::HONG_KONG_DOLLAR
    end

    it "returns the hungarian florint" do
      currency(:HUF).should == ISO4217::HUNGARY_FLORINT
    end

    it "returns the icelandic kronur" do
      currency(:ISK).should == ISO4217::ICELAND_KRONUR
    end

    it "returns the indian rupee" do
      currency(:INR).should == ISO4217::INDIAN_RUPEE
    end

    it "returns the indonesian Rupiah" do
      currency(:IDR).should == ISO4217::INDONESIAN_RUPIAH
    end

    it "returns the iranian rial" do
      currency(:IRR).should == ISO4217::IRAN_RIALS
    end

    it "returns the isle of man pound" do
      currency(:IMP).should == ISO4217::ISLE_OF_MAN_POUND
    end

    it "returns the israel new shekel" do
      currency(:ILS).should == ISO4217::ISRAEL_NEW_SHEKEL
    end

    it "returns the jamaica dollar" do
      currency(:JMD).should == ISO4217::JAMAICA_DOLLAR
    end

    it "returns the japanese jen" do
      currency(:JPY).should == ISO4217::JAPAN_YEN
    end

    it "returns the jersey pound" do
      currency(:JEP).should == ISO4217::JERSEY_POUND
    end

    it "returns the kazakhstan tenge" do
      currency(:KZT).should == ISO4217::KAZAKHSTAN_TENGE
    end

    it "returns the north korean won" do
      currency(:KPW).should == ISO4217::NORTH_KOREAN_WON
    end

    it "returns the south korean won" do
      currency(:KRW).should == ISO4217::SOUTH_KOREAN_WON
    end
    
    it "returns the kyrgyzstan soms" do
      currency(:KGS).should == ISO4217::KYRGYZSTAN_SOMS
    end

    it "returns the laos kip" do
      currency(:LAK).should == ISO4217::LAOS_KIPS
    end

    it "returns the latvian lati" do
      currency(:LVL).should == ISO4217::LATVIAN_LATI
    end

    it "returns the lebanese pound" do
      currency(:LBP).should == ISO4217::LEBANON_POUND
    end

    it "returns the liberian dollar" do
      currency(:LRD).should == ISO4217::LIBERIA_DOLLARS
    end

    it "returns the swiss francs" do
      currency(:CHF).should == ISO4217::SWITZERLAND_FRANCS
    end

    it "returns the lithuanian litai" do
      currency(:LTL).should == ISO4217::LITHUANIA_LITAI
    end

    it "returns the macedonian denar" do
      currency(:MKD).should == ISO4217::MACEDONIA_DENARS
    end

    it "returns the malaysan ringgit" do
      currency(:MYR).should == ISO4217::MALAYSIA_RINGGITS
    end

    it "returns the mauritius rupee" do
      currency(:MUR).should == ISO4217::MAURITIUS_RUPEES
    end

    it "returns the mexican peso" do
      currency(:MXN).should == ISO4217::MEXICO_PESOS
    end

    it "returns the mongolian tugrik" do
      currency(:MNT).should == ISO4217::MONGOLIA_TUGRIKS
    end

    it "returns the mozambique metical" do
      currency(:MZN).should == ISO4217::MOZAMBIQUE_METICALS
    end

    it "returns the namibian dollar" do
      currency(:NAD).should == ISO4217::NAMIBIA_DOLLARS
    end

    it "returns the nepal rupee" do
      currency(:NPR).should == ISO4217::NEPAL_RUPEES
    end

    it "returns the netherland antilles guilders" do
      currency(:ANG).should == ISO4217::NETHERLANDS_ANTILLES_GUILDERS
    end

    it "returns the new zealand dollar" do
      currency(:NZD).should == ISO4217::NEW_ZEALAND_DOLLARS
    end

    it "returns the nicaraguan cordoba" do
      currency(:NIO).should == ISO4217::NICARAGUA_CORDOBAS
    end

    it "returns the nigerian naira" do
      currency(:NGN).should == ISO4217::NIGERIA_NAIRAS
    end

    it "returns the norwegian krone" do
      currency(:NOK).should == ISO4217::NORWAY_KRONE
    end

    it "returns the oman rial" do
      currency(:OMR).should == ISO4217::OMAN_RIALS
    end

    it "returns the pakistan rupee" do
      currency(:PKR).should == ISO4217::PAKISTAN_RUPEES
    end

    it "returns the panaman balboa" do
      currency(:PAB).should == ISO4217::PANAMA_BALBOA
    end

    it "returns the paraguayan guarani" do
      currency(:PYG).should == ISO4217::PARAGUAY_GUARANI
    end

    it "returns the peruvian nuevo soles" do
      currency(:PEN).should == ISO4217::PERU_NUEVOS_SOLES
    end

    it "returns the philippines peso" do
      currency(:PHP).should == ISO4217::PHILIPPINES_PESOS
    end

    it "returns the polish zlotych" do
      currency(:PLN).should == ISO4217::POLAND_ZLOTYCH
    end

    it "returns the qatar rials" do
      currency(:QAR).should == ISO4217::QATAR_RIALS
    end

    it "returns the romanian new lei" do
      currency(:RON).should == ISO4217::ROMANIA_NEW_LEI
    end

    it "returns the russian ruble" do
      currency(:RUB).should == ISO4217::RUSSIA_RUBLES
    end

    it "returns the saint helena pound" do
      currency(:SHP).should == ISO4217::SAINT_HELENA_POUNDS
    end

    it "returns the saudi arabian riyal" do
      currency(:SAR).should == ISO4217::SAUDI_ARABIA_RIYALS
    end

    it "returns the serbian dinar" do
      currency(:RSD).should == ISO4217::SERBIA_DINARS
    end

    it "returns the seychelies rupee" do
      currency(:SCR).should == ISO4217::SEYCHELIES_RUPEES
    end

    it "returns the singapore dollar" do
      currency(:SGD).should == ISO4217::SINGAPORE_DOLLARS
    end

    it "returns the solomon islands dollar" do
      currency(:SBD).should == ISO4217::SOLOMON_ISLANDS_DOLLARS
    end

    it "returns the somalia shilling" do
      currency(:SOS).should == ISO4217::SOMALIA_SHILLINGS
    end

    it "returns the south african rand" do
      currency(:ZAR).should == ISO4217::SOUTH_AFRICA_RAND
    end

    it "returns the sri lanka rupee" do
      currency(:LKR).should == ISO4217::SRI_LANKA_RUPEES
    end

    it "returns the swedish kronor" do
      currency(:SEK).should == ISO4217::SWEDEN_KRONOR
    end

    it "returns the swiss frnac" do
      currency(:CHF).should == ISO4217::SWITZERLAND_FRANCS
    end

    it "returns the suriname dollar" do
      currency(:SRD).should == ISO4217::SURINAME_DOLLARS
    end

    it "returns the syirian pound" do
      currency(:SYP).should == ISO4217::SYRIA_POUNDS
    end

    it "returns the taiwanese new dollar" do
      currency(:TWD).should == ISO4217::TAIWAN_NEW_DOLLARS
    end

    it "returns the thailand baht" do
      currency(:THB).should == ISO4217::THAILAND_BAHT
    end

    it "returns the trinidad and tobago dollar" do
      currency(:TTD).should == ISO4217::TRINIDAD_AND_TOBAGO_DOLLARS
    end

    it "returns the turkish lira" do
      currency(:TRY).should == ISO4217::TURKEY_LIRA
    end

    it "returns the tuvalu dollar" do
      currency(:TVD).should == ISO4217::TUVALU_DOLLARS
    end

    it "returns the ukraine hryvnia" do
      currency(:UAH).should == ISO4217::UKRAINE_HRYVNIA
    end

    it "returns the uruguay peso" do
      currency(:UYU).should == ISO4217::URUGUAY_PESOS
    end

    it "returns the uzbekistan sums" do
      currency(:UZS).should == ISO4217::UZBEKISTAN_SUMS
    end

    it "returns the venezuelan bolivar fuerte" do
      currency(:VEF).should == ISO4217::VENEZUELA_BOLIVARES_FUERTES
    end

    it "returns the vietnamese dong" do
      currency(:VND).should == ISO4217::VIETNAM_DONG
    end

    it "returns the yemen rials" do
      currency(:YER).should == ISO4217::YEMEN_RIALS
    end
  end
end
