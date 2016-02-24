#!/usr/bin/ruby

require 'nokogiri'
require 'open-uri'
require 'uri'
require 'cgi'
require 'date'
require 'json'

target_url = URI.escape("http://www.homes.co.jp/")
doc = Nokogiri::HTML(open(target_url))

bukken_count = doc.xpath("//p[@class='raCount']/span[@class='count']/text()")
today = Date.today.strftime("%Y-%m-%d")
puts "#{today} is #{bukken_count} bukken."

# JSONを作成
puts JSON.generate({today => bukken_count})
 
# DBへ件数を登録する
