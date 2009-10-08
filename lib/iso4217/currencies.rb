module ISO4217

  GENERIC_CURRENCY_SIGN= "U+00a4"
  DOLLAR_SIGN = "U+0024"

  ALBANIAN_LEKE= Currency.new(:ALL, "U+004cU+0065U+6b", 'Lek')
  AMERICAN_DOLLAR= Currency.new(:USD, DOLLAR_SIGN, 'US dollar')
  AFGHANI= Currency.new(:AFN, "U+060b", 'Afghani')
  ARGENTINA_PESOS= Currency.new(:ARS, "U+0024", 'Argentine peso')
  ARUBAN_GUILDER= Currency.new(:AWG, "U+0192", 'Aruban guilder')
  AUSTRALIAN_DOLLAR= Currency.new(:AUD, DOLLAR_SIGN, 'Australian dollar')
  AZERBAIJANIAN_MANAT= Currency.new(:AZN, "U+043cU+0430U+043d", 'Azerbaijanian manat')
  BAHAMAS_DOLLAR= Currency.new(:BSD, DOLLAR_SIGN, 'Bahamian dollar')
  BARBADOS_DOLLAR= Currency.new(:BBD, DOLLAR_SIGN, 'Barbados dollar')
  BELARUS_RUBLE= Currency.new(:BYR, "U+0070U+002e", 'Belarusian ruble')
  BELIZE_DOLLAR= Currency.new(:BZD, "U+0042U+005aU+0024", 'Belize dollar')

  EURO= Currency.new(:EUR, "U+20ac", 'euro')
  GBP= Currency.new(:GBP, "U+00a3", 'Pound sterling')

end

