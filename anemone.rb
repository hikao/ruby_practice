#!/usr/bin/ruby

# About anemone

require 'anemone'

Anemone.crawl("http://www.homes.co.jp/", :depth_limit => 1) do |anemone|
  anemone.on_every_page do |page|
    page.doc.xpath("//h2").each do |title|
      puts title.text
    end
  end
end
