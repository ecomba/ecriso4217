module ISO4217

  GENERIC_CURRENCY_SIGN= "U+00a4"
  DOLLAR_SIGN = "U+0024"

  CURRENCIES = [
    ALBANIAN_LEKE=              Currency.new(:ALL, "U+004cU+0065U+6b", 'Lek'),
    AMERICAN_DOLLAR=            Currency.new(:USD, DOLLAR_SIGN, 'US dollar'),
    AFGHANI=                    Currency.new(:AFN, "U+060b", 'Afghani'),
    ARGENTINA_PESOS=            Currency.new(:ARS, "U+0024", 'Argentine peso'),
    ARUBAN_GUILDER=             Currency.new(:AWG, "U+0192", 'Aruban guilder'),
    AUSTRALIAN_DOLLAR=          Currency.new(:AUD, DOLLAR_SIGN, 'Australian dollar'),
    AZERBAIJANIAN_MANAT=        Currency.new(:AZN, "U+043cU+0430U+043d", 'Azerbaijanian manat'),
    BAHAMAS_DOLLAR=             Currency.new(:BSD, DOLLAR_SIGN, 'Bahamian dollar'),
    BARBADOS_DOLLAR=            Currency.new(:BBD, DOLLAR_SIGN, 'Barbados dollar'),
    BELARUS_RUBLE=              Currency.new(:BYR, "U+0070U+002e", 'Belarusian ruble'),
    BELIZE_DOLLAR=              Currency.new(:BZD, "U+0042U+005aU+0024", 'Belize dollar'),
    BERMUDA_DOLLARS=            Currency.new(:BMD, DOLLAR_SIGN, 'Bermudian dollar'),
    BOLIVIA_BOLIVIANOS=         Currency.new(:BOB, "#{DOLLAR_SIGN}U+0062", 'Boliviano'),
    CONVERTIBLE_MARKA=          Currency.new(:BAM, "U+004bU+004d", 'Convertible marka'), #Bosnia and Heregovina
    BOTSWANA_PULAS=             Currency.new(:BWP, "U+0050", 'Pula'),
    BULGARIAN_LEVA=             Currency.new(:BGN, "U+043bU+0432", 'Bulgarian lev'),
    BRAZILIAN_REAL=             Currency.new(:BRL, "U+0052#{DOLLAR_SIGN}", 'Brazilian real'),
    BRITAIN_POUND=              Currency.new(:GBP, "U+00a3", 'Pound sterling'),
    BRUNEI_DARUSSALAM_DOLLAR=   Currency.new(:BND, DOLLAR_SIGN, 'Brunei dollar'),
    CAMBODIAN_RIELS=            Currency.new(:KHR, "U+17db", 'Riel'),
    CANADIAN_DOLLAR=            Currency.new(:CAD, "CanU+0024", 'Canadian dollar'),
    CAYMAN_ISLANDS_DOLLARS=     Currency.new(:KYD, DOLLAR_SIGN, 'Cayman Islands dollar'),
    CHILE_PESOS=                Currency.new(:CLP, DOLLAR_SIGN, 'Chilean peso'),
    CHINA_YUAN_RENMINBI=        Currency.new(:CNY, "U+00a5", 'Chinese Yuan'),
    COLOMBIAN_PESO=             Currency.new(:COP, DOLLAR_SIGN, 'Colombian peso'),
    COSTA_RICA_COLON=           Currency.new(:CRC, "U+20a1", 'Costa Rica colon'),

    EURO=                       Currency.new(:EUR, "U+20ac", 'euro')
  ]

  CURRENCY_BY_CODE = Hash.new 

  CURRENCIES.each do |currency|
    CURRENCY_BY_CODE[currency.code.to_s]= currency
  end

  def currency(code)
    CURRENCY_BY_CODE[code.to_s]
  end
end
