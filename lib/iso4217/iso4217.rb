module ISO4217
  module CurrencyHelper

    COUNTRIES = {
      :AF => AFGHANI,
      :AD => EURO,
      :AG => EAST_CARIBBEAN_DOLLAR,
      :AI => EAST_CARIBBEAN_DOLLAR,
      :AL => ALBANIAN_LEK,
      :AM => ARMENIAN_DRAM,
      :AO => ANGOLAN_KWANZA,
      :AR => ARGENTINA_PESOS,
      :AS => AMERICAN_DOLLAR,
      :AT => EURO,
      :AU => AUSTRALIAN_DOLLAR,
      :AZ => AZERBAIJANIAN_MANAT,
      :AW => ARUBAN_FLORIN,
      :BB => BARBADOS_DOLLAR,
      :BD => BANGLADESHI_TAKA,
      :BE => EURO,
      :BG => EURO,
      :BH => BAHRAINI_DINAR,
      :BS => BAHAMAS_DOLLAR,
      :CA => CANADIAN_DOLLAR,
      :CZ => EURO,
      :DK => EURO,
      :DE => EURO,
      :DZ => ALGERIAN_DINAR,
      :EE => EURO,
      :IE => EURO,
      :EL => EURO,
      :ES => EURO,
      :FR => EURO,
      :GB => BRITAIN_POUND,
      :IT => EURO,
      :CY => EURO,
      :LV => EURO,
      :LT => EURO,
      :LU => EURO,
      :HU => EURO,
      :MT => EURO,
      :NL => EURO,
      :PL => EURO,
      :PT => EURO,
      :RO => EURO,
      :SI => EURO,
      :SK => EURO,
      :FI => EURO,
      :SE => EURO,
      :UK => BRITAIN_POUND,
      :US => AMERICAN_DOLLAR
    }

    def currency_for(country_code, default_when_currency_not_found= :NAC)
      COUNTRIES[country_code] || Currency.new(default_when_currency_not_found, GENERIC_CURRENCY_SIGN, 'unknown')
    end

    def currency_code_for(country_code, default_when_currency_not_found= :NAC)
      currency_for(country_code, default_when_currency_not_found).code.to_s
    end

    def currency_sign_for(country_code, default_when_currency_not_found= :NAC)
      currency_for(country_code, default_when_currency_not_found).sign
    end
  end
end

