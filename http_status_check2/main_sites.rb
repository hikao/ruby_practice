#!/usr/bin/ruby
require 'yaml'
require './status_checker'


# 障害時に本番環境の主要サイトのステータスを確認するテスト
class TestMainsiteStatusCheck < Test::Unit::TestCase
  include StatusChecker
  attr_accessor :fails
  def setup
    p 'setup'
    @mutex = Mutex.new
    @fails = ["a"]
    p @fails.object_id
  end

  def teardown
    p 'teardown'
    p @fails
  end

  URL_LIST = YAML.load_file('main_sites_urls.yml')

  def test_pc_urls
    p "test_pc_urls"
    urls = URL_LIST['pc']
    Parallel.each(urls, in_thread:4) do |url|
      http_status_check(url, @fails)
    end
  end
end

