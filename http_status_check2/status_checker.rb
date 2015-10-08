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
module StatusChecker
  include Requests
  #include Test::Unit::Assertions
  # HTTP ステータスコードをチェックする
  # @param [String] url チェック対象のurl
  def http_status_check(url, fails)
    p fails.object_id
    p url
    if url == "ng"
      #@mutex.synchronize do
        p "----error!!!-----"
        fails << "error #{url}"
        p fails
      #end
    end
  end

  #private
  # HTTP ステータスコードを返す
  # @param ['String'] リダイレクト先のurl
  def check_redirect_url(redirect_url)
    http_status_check(redirect_url)
  end
end
