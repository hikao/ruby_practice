#!/usr/bin/ruby
require 'net/http'
require 'parallel'
require 'yaml'

url_list = YAML.load_file('urls.yml')
urls = url_list['urls']

Parallel.each(urls, in_parallel:4) do |url|
	response = Net::HTTP.get_response(URI.parse(url))
	p response.code
end
