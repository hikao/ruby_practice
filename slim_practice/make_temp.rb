#!/usr/bin/ruby

# rubyファイルでテンプレートをオブジェクト化し、
# htmlファイルを作成する

require 'slim'
# オプションの設定
Slim::Engine.set_options pretty: true

#a = Slim::Template.new('./template.html.slim').render
arg = ["arg"]
arg2 = {result: {hash1:1, hash2:2, hash3:3}}
slim = Slim::Template.new('./template.html.slim')
# 引数を渡せる
# テンプレート側ではselfで参照できる
puts slim.render(arg2)
