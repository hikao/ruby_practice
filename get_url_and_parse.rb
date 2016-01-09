#!/usr/bin/ruby

# githubリポジトリからRuby trendを取得
require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('https://github.com/trending?l=ruby'))
doc.xpath('//li[@class="repo-list-item"]//h3[@class="repo-list-name"]//a').each do |ele|
  ele.text.match(' ([\-0-9a-zA-Z]*?)\\n')
  p $1
end
