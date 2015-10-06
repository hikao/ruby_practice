#!/usr/bin/ruby


require 'net/http'

# 受け取ったurlに対してリクエストを投げ
# 単純にレスポンスを返す
module Requests
  # @param [String] url リクエストを投げるurl
  # @return [Net::HTTP] response HttpStatusCode
  def get_response(url)
    p url.class
    response = Net::HTTP.get_response(URI.parse(url))
    return response
  end
end
