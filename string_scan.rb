#!/usr/bin/ruby

# About string#scan
html = <<xxxx
<p>1993年2月24日
<a href="http://www.ruby-lang.org/ja/">
Ruby's Birthday</a></p>
<p>2014年4月1日
<a href="http://www.example.com/">元日</a></p>
xxxx

## 情報の抜き出し
# 日付を抜き出す
dates = html.scan(/(\d+)年(\d+)月(\d+)日$/)
p dates

# リンクの抜き出し
links = html.scan(%r{a href="(.+)">})
p links

## 情報をまとめる
puts "============="
data = (0...dates.length).map{|i| [dates[i], links[i]]}
p data
puts "============="
p dates.zip(links)


