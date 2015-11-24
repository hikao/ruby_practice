#!/usr/bin/ruby

# Googleの検索結果を取得する

require 'nokogiri'
require 'open-uri'
require 'uri'
require 'cgi'

escaped_url = URI.escape("https://www.google.com/search?q=Ruby&oe=utf-8&hl=ja")
doc = Nokogiri::HTML(open(escaped_url))

# 検索結果の件数
puts doc.xpath("//*[@id='resultStats']/text()")

doc.xpath('//h3/a').each do |link|
  #puts CGI.parse(link[:href])["adurl"]
  puts link.content
end
