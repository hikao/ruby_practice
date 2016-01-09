#!/usr/bin/ruby

require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('https://github.com/trending?l=ruby'))
doc.xpath('//li[@class="repo-list-item"]//h3[@class="repo-list-name"]//span[@class="prefix"]').each do |ele|
  p ele.class
end
