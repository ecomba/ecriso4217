module ISO4217
  class Currency
    attr_reader :code, :sign, :name

    def initialize(code, sign, name)
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
end

