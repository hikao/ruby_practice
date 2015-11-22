#! /usr/bin/ruby

require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('http://b.hatena.ne.jp/'))

p doc.xpath('//a[@class="entry-link"]')[0].text
