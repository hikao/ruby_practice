#!/usr/bin/ruby

# test/unit sample

require "test/unit"

class Hoge < Test::Unit::TestCase
  # 以下でインスタンスメソッドを確認できる
  # puts Hoge.instance_methods
  
  class << self
    def startup
      puts "---startup---"
    end

    def shutdown
      puts "---shutdown---"
    end
  end

  def setup
    # puts Hoge.instance_methods
    puts "---setup---"
  end
  def teardown
	puts "---teardown---"
  end

  def test_hoge
    puts "---test_hoge---"
    assert 3 == "3".to_i
	assert_true true
  end
end
