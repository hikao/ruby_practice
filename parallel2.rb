#!/usr/bin/ruby

require 'rubygems'
require 'parallel'
require 'open-uri'
require 'digest/md5'

urls = [
    'http://yahoo.co.jp/',
    'https://google.com/',
    'https://github.com/',
    'https://qiita.com/'
]

Parallel.each(urls, in_parallel: 2) {|url|
  puts "start download: #{url}"
  img = open(image) rescue next
  img.close
  file_path = "./#{Digest::MD5.hexdigest(url)}.jpg"
  File.rename(img.path, file_path)
  puts "end download: #{url}"
}
