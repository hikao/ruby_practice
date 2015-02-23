require 'yaml'

url_list = YAML.load_file('urls.yml')
urls = url_list["urls"]

for url in urls do
    p url
end
