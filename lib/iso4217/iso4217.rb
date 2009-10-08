module ISO4217# TODO: Rename module and project to ISO4217
  EURO = Currency.new(:EUR, "U+20ac", 'euro')
  GBP = Currency.new(:GBP, "U+00a3", 'Pound sterling')
  USD = Currency.new(:USD, "U+0024", 'US dollar')
  GENERIC_CURRENCY_SYMBOL = "U+00a4"

  COUNTRIES = {
    :BE => EURO, 
    :BG => EURO,
    :CA => Currency.new(:CAD, "CanU+0024", 'Canadian dollar'),
    :CZ => EURO,
    :DK => EURO,
    :DE => EURO,
    :EE => EURO,
    :IE => EURO,
    :EL => EURO,
    :ES => EURO,
    :FR => EURO,
    :GB => GBP, 
    :IT => EURO,
    :CY => EURO,
    :LV => EURO,
    :LT => EURO,
    :LU => EURO,
    :HU => EURO,
    :MT => EURO,
    :NL => EURO,
    :AT => EURO,
    :PL => EURO,
    :PT => EURO,
    :RO => EURO,
    :SI => EURO,
    :SK => EURO,
    :FI => EURO,
    :SE => EURO,
    :UK => GBP,
    :US => USD
  }

  def currency_for(country_code, default_when_currency_not_found= :NAC)
    COUNTRIES[country_code] || Currency.new(default_when_currency_not_found, GENERIC_CURRENCY_SYMBOL, 'unknown')
  end

  def currency_code_for(country_code, default_when_currency_not_found= :NAC)
    currency_for(country_code, default_when_currency_not_found).code.to_s
  end

  def currency_sign_for(country_code, default_when_currency_not_found= :NAC)
    currency_for(country_code, default_when_currency_not_found).sign
  end
end

