class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def intervals
    [
      ['month'],
      ['year'],
      ['every 3 months'],
      ['every 6 months'],
      ['week']
    ]
  end
  def currency
    [
      ['USD - US Dollars', 'USD'],
      ['AFA - Afghan Afghani', 'AFA'],

      ['AWG - Aruban Florin', 'AWG'],

      ['AUD - Australian Dollars', 'AUD'],

      ['ARS - Argentine Pes', 'ARS'],

      ['AZN - Azerbaijanian Manat', 'AZN'],

      ['BSD - Bahamian Dollar', 'BSD'],

      ['BDT - Bangladeshi Taka', 'BDT'],

      ['BBD - Barbados Dollar', 'BBD'],

      ['BYR - Belarussian Rouble', 'BYR'],

      ['BOB - Bolivian Boliviano', 'BOB'],

      ['BRL - Brazilian Real', 'BRL'],

      ['GBP - British Pounds Sterling', 'GBP'],

      ['BGN - Bulgarian Lev', 'BGN'],

      ['KHR - Cambodia Riel', 'KHR'],

      ['CAD - Canadian Dollars', 'CAD'],

      ['KYD - Cayman Islands Dollar', 'KYD'],

      ['CLP - Chilean Peso', 'CLP'],

      ['CNY - Chinese Renminbi Yuan', 'CNY'],

      ['COP - Colombian Peso', 'COP'],

      ['CRC - Costa Rican Colon', 'CRC'],

      ['HRK - Croatia Kuna', 'HRK'],

      ['CPY - Cypriot Pounds', 'CPY'],

      ['CZK - Czech Koruna', 'CZK'],

      ['DKK - Danish Krone', 'DKK'],

      ['DOP - Dominican Republic Peso', 'DOP'],

      ['XCD - East Caribbean Dollar', 'XCD'],

      ['EGP - Egyptian Pound', 'EGP'],

      ['ERN - Eritrean Nakfa', 'ERN'],

      ['EEK - Estonia Kroon', 'EEK'],

      ['EUR - Euro', 'EUR'],

      ['GEL - Georgian Lari', 'GEL'],

      ['GHC - Ghana Cedi', 'GHC'],

      ['GIP - Gibraltar Pound', 'GIP'],

      ['GTQ - Guatemala Quetzal', 'GTQ'],

      ['HNL - Honduras Lempira', 'HNL'],

      ['HKD - Hong Kong Dollars', 'HKD'],

      ['HUF - Hungary Forint', 'HUF'],

      ['ISK - Icelandic Krona', 'ISK'],

      ['INR - Indian Rupee', 'INR'],

      ['IDR - Indonesia Rupiah', 'IDR'],

      ['ILS - Israel Shekel', 'ILS'],

      ['JMD - Jamaican Dollar', 'JMD'],

      ['JPY - Japanese yen', 'JPY'],

      ['KZT - Kazakhstan Tenge', 'KZT'],

      ['KES - Kenyan Shilling', 'KES'],

      ['KWD - Kuwaiti Dinar', 'KWD'],

      ['LVL - Latvia Lat', 'LVL'],

      ['LBP - Lebanese Pound', 'LBP'],

      ['LTL - Lithuania Litas', 'LTL'],

      ['MOP - Macau Pataca', 'MOP'],

      ['MKD - Macedonian Denar', 'MKD'],

      ['MGA - Malagascy Ariary', 'MGA'],

      ['MYR - Malaysian Ringgit', 'MYR'],

      ['MTL - Maltese Lira', 'MTL'],

      ['BAM - Marka', 'BAM'],

      ['MUR - Mauritius Rupee', 'MUR'],

      ['MXN - Mexican Pesos', 'MXN'],

      ['MZM - Mozambique Metical', 'MZM'],

      ['NPR - Nepalese Rupee', 'NPR'],

      ['ANG - Netherlands Antilles Guilder', 'ANG'],

      ['TWD - New Taiwanese Dollars', 'TWD'],

      ['NZD - New Zealand Dollars', 'NZD'],

      ['NIO - Nicaragua Cordoba', 'NIO'],

      ['NGN - Nigeria Naira', 'NGN'],

      ['KPW - North Korean Won', 'KPW'],

      ['NOK - Norwegian Krone', 'NOK'],

      ['OMR - Omani Riyal', 'OMR'],

      ['PKR - Pakistani Rupee', 'PKR'],

      ['PYG - Paraguay Guarani', 'PYG'],

      ['PEN - Peru New Sol', 'PEN'],

      ['PHP - Philippine Pesos', 'PHP'],

      ['QAR - Qatari Riyal', 'QAR'],

      ['RON - Romanian New Leu', 'RON'],

      ['RUB - Russian Federation Ruble', 'RUB'],

      ['SAR - Saudi Riyal', 'SAR'],

      ['CSD - Serbian Dinar', 'CSD'],

      ['SCR - Seychelles Rupee', 'SCR'],

      ['SGD - Singapore Dollars', 'SGD'],

      ['SKK - Slovak Koruna', 'SKK'],

      ['SIT - Slovenia Tolar', 'SIT'],

      ['ZAR - South African Rand', 'ZAR'],

      ['KRW - South Korean Won', 'KRW'],

      ['LKR - Sri Lankan Rupee', 'LKR'],

      ['SRD - Surinam Dollar', 'SRD'],

      ['SEK - Swedish Krona', 'SEK'],

      ['CHF - Swiss Francs', 'CHF'],

      ['TZS - Tanzanian Shilling', 'TZS'],

      ['THB - Thai Baht', 'THB'],

      ['TTD - Trinidad and Tobago Dollar', 'TTD'],

      ['TRY - Turkish New Lira', 'TRY'],

      ['AED - UAE Dirham', 'AED'],


      ['UGX - Ugandian Shilling', 'UGX'],

      ['UAH - Ukraine Hryvna', 'UAH'],

      ['UYU - Uruguayan Peso', 'UYU'],

      ['UZS - Uzbekistani Som', 'UZS'],

      ['VEB - Venezuela Bolivar', 'VEB'],

      ['VND - Vietnam Dong', 'VND'],

      ['AMK - Zambian Kwacha', 'AMK'],
    ]
  end
  helper_method :intervals
  helper_method :currency
end
