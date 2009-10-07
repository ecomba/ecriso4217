module ISO4217# TODO: Rename module and project to ISO4217
  class Currency
    attr_reader :code, :sign, :name

    def initialize(code, sign, name = '')
      @code, @sign, @name = code, utf8(sign), name
    end

    def to_s
      "Code: #{@code} | Sign: #{@sign} | Currency: #{@name}"
    end

    private
    def utf8(string)
      string.gsub(/U\+([0-9a-fA-F]{4,4})/u){["#$1".hex ].pack('U*')}
    end
  end

  EURO = Currency.new(:EUR, "U+20ac", 'euro')
  GBP = Currency.new(:GBP, "U+00a3", 'Pound sterling')
  USD = Currency.new(:USD, "U+0024", 'US dollar')
  GENERIC_CURRENCY_SYMBOL = "U+00a4"

  SIFFS = {
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

  def currency_for(country_code, default_when_currency_not_found= 'unknown')
    SIFFS[country_code] || Currency.new(default_when_currency_not_found,GENERIC_CURRENCY_SYMBOL) 
  end

  def currency_code_for(country_code, default_when_currency_not_found= 'unknown')
    currency_for(country_code, default_when_currency_not_found).code.to_s
  end

  def currency_sign_for(country_code, default_when_currency_not_found= 'unknown')
    currency_for(country_code, default_when_currency_not_found).sign
  end
end

