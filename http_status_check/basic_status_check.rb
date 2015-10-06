#!/usr/bin/ruby
require 'net/http'
require 'yaml'

url_list = YAML.load_file('urls.yml')
urls = url_list['urls']

for url in urls do
	response = Net::HTTP.get_response(URI.parse(url))
	p response.code
end
