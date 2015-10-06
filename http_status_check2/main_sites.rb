#!/usr/bin/ruby
require 'yaml'
require './status_checker'


# 障害時に本番環境の主要サイトのステータスを確認するテスト
class TestMainsiteStatusCheck < StatusChecker
  URL_LIST = YAML.load_file('main_sites_urls.yml')

  def test_pc_urls
    p "test_pc_urls"
    urls = URL_LIST['pc']

    Parallel.each(urls, in_processes:4) do |url|
      http_status_check(url)
    end
  end

  # def test_sp_urls
  #   urls = URL_LIST['sp']
  #   
  #   Parallel.each(urls, in_processes:4) do |url|
  #     p url
  #     response = Net::HTTP.get_response(URI.parse(url))
  #     if response.code.to_i != 200
  #       p response.code
  #     end
  #     # assert_equal(200, response.code.to_i, "\n[Status Error]\ncheck this url => #{url}")
  #   end
  # end

  # def test_mb_urls
  #   p "test_mb_urls"
  #   urls = URL_LIST['mb']
  #   
  #   Parallel.each(urls, in_processes:4) do |url|
  #     response = Net::HTTP.get_response(URI.parse(url))
  #     if response.code.to_i != 200
  #       p url
  #       p response.code
  #     end
  #     # assert_equal(200, response.code.to_i)
  #   end
  # end
end

