module Siff
  
  SIFFS = {
    :DE => 'EUR',
    :GB => 'GBP'
  }
  def currency_for(country_code)
    SIFFS[country_code]
  end
end