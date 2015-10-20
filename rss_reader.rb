#!/usr/bin/ruby

# Nokogiriを使ってRSSを読み込む
# RSSのほうがHTMLより、情報を効率的に取得できる
# また、HTMLにアクセスするよりも負荷が少ないので、
# RSSがあればそちらを利用した方がよい
require 'nokogiri'
require 'open-uri'

url = "http://www.amazon.co.jp/gp/rss/bestsellers/videogames/ref=zg_bs_videogames_rsslink"
xml = Nokogiri::XML(open(url).read)
nodes = xml.xpath('//item')
nodes.each do |item|
  puts item.xpath('//title').text
  puts item.xpath('link').text
end
