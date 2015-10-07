#!/usr/bin/ruby
require 'net/http'
require './requests'
require 'pry'
require 'bundler'
Bundler.require

# urlに対して、HTTPステータスをチェックする
# 2xx系ならok
# 3xx系なら再度リクエストを投げる
# 4xx~5xxはassertion
class StatusChecker < Test::Unit::TestCase
  include Test::Unit::Assertions
  include Requests
  # HTTP ステータスコードをチェックする
  # @param [String] url チェック対象のurl
  def http_status_check(url)
    response = get_response(url)
    if response.code =~ /2[0-9]{2}/
      p url, response.code
    elsif response.code =~ /3[0-9]{2}/
      p url, response.code
      puts "redirect to #{response['location']}"
      check_redirect_url(response['location'])
    elsif response.code =~ /(4|5)[0-9]{2}/
      puts "\n[Status Error]\ncheck this url => #{url}")
    else
      raise "Status Code is Invalid. \n Status:#{response.code}"
    end

    # assert_equal(200, response.code.to_i, "\n[Status Error]\ncheck this url => #{url}")
  end

  #private
  # HTTP ステータスコードを返す
  # @param ['String'] リダイレクト先のurl
  def check_redirect_url(redirect_url)
    http_status_check(redirect_url)
  end
end
