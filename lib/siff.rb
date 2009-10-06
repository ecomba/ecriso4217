module Siff
  
  SIFFS = {
    :BE => 'EUR',
    :BG => 'EUR',
    :CZ => 'EUR',
    :DK => 'EUR',
    :DE => 'EUR',
    :EE => 'EUR',
    :IE => 'EUR',
    :EL => 'EUR',
    :ES => 'EUR',
    :FR => 'EUR',
    :GB => 'GBP',
    :IT => 'EUR',
    :CY => 'EUR',
    :LV => 'EUR',
    :LT => 'EUR',
    :LU => 'EUR',
    :HU => 'EUR',
    :MT => 'EUR',
    :NL => 'EUR',
    :AT => 'EUR',
    :PL => 'EUR',
    :PT => 'EUR',
    :RO => 'EUR',
    :SI => 'EUR',
    :SK => 'EUR',
    :FI => 'EUR',
    :SE => 'EUR',
    :UK => 'GBP'
  }
  def currency_for(country_code)
    SIFFS[country_code]
  end
end
