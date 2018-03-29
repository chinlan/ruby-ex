require 'nokogiri'
require 'open-uri'
require 'CSV'

# Downloading the csv file from government open data platform (only big5 encoding is provided)
begin
  File.open('rate-today.csv', 'wb') do |file|
    downloaded_file = open("http://www.taifex.com.tw/data_gov/taifex_open_data.asp?data_name=DailyForeignExchangeRates")
    file.write(downloaded_file.read())
  end
rescue => e
  puts 'Something is wrong'
end

# Parsing the csv file, transfer to utf-8 encoding, calculate result
rows = CSV.read('rate-today.csv', headers: true, encoding: 'big5:utf-8', converters: :numeric)
dollar_to_nt_index = rows[0].index('美元／新台幣')
dollar_to_yen_index = rows[0].index('美元／日幣')
today_row = rows[rows.length-1]
yen_rate = (today_row[dollar_to_nt_index]/today_row[dollar_to_yen_index]).round(3)
puts "#{Time.now.strftime('%Y/%m/%d')}日幣匯率：#{yen_rate}"

