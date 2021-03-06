#!/usr/bin/ruby

require 'nokogiri'
require 'open-uri'
require 'uri'
require 'cgi'
require 'date'
require 'json'

target_url = URI.escape("http://www.homes.co.jp/")
doc = Nokogiri::HTML(open(target_url))

begin
  bukken_count = doc.xpath("//p[@class='raCount']/span[@class='count']/text()")
rescue => e
  p e.message
end
today = Date.today.strftime("%Y-%m-%d")
puts "#{today} is #{bukken_count} bukken."

# JSONを作成
json_data = JSON.generate({today => bukken_count})
json_file = './result.json'
open(json_file, 'w') do |io|
  JSON.dump(json_data, io)
end
 
# DBへ件数を登録する
