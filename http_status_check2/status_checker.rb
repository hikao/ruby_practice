#!/usr/bin/ruby
require 'net/http'
require './requests'
require 'pry'
require 'bundler'
Bundler.require


# urlに対して、HTTPステータスをチェックする
# 2xx系なら
# 3xx系なら再度リクエストを投げる
# 4xx~5xxは
class StatusChecker < Test::Unit::TestCase
  include Test::Unit::Assertions
  include Requests

  # HTTP ステータスコードをチェックする
  # @param [String] url チェック対象のurl
  def http_status_check(url)
    # binding.pry
    response = get_response(url)
    p response.code
    # assert_equal(200, response.code.to_i, "\n[Status Error]\ncheck this url => #{url}")
  end
end
