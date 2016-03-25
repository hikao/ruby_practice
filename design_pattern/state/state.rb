#!/usr/bin/ruby

# State Pattern

# 抽象クラス
class State
  def ice_break
    # 実装されていなかったら例外を出す
    raise "not implemented error."
  end
  def choose_fastion
    # 実装されていなかったら例外を出す
    raise "not implemented error."
  end
end

class SunnyDay < State
  def ice_break
    puts "今日は晴れて、良い天気ですねー!!!"
  end

  def choose_fastion
      puts "なのでスニーカーを履こう"
  end
end

class RainyDay < State
  def ice_break
    puts "今日は雨がすごいっすねー!"
  end

  def choose_fastion
    puts "なので長靴を履こう"
  end
end

class CloudyDay < State
  def ice_break
    puts "今日は天気悪いんですかねー..."
  end

  def choose_fastion
    puts "なのでなんでもよい"
  end
end

# 状況を保持するクラス
class Context
  def initialize
    @sunny = SunnyDay.new
    @rainy = RainyDay.new
    @cloudy = CloudyDay.new
    # 状況を保持
    @state = @sunny
  end

  def change_state(weather)
    if weather == "SunnyDay"
      @state = @sunny
    elsif weather == "RainyDay"
      @state = @rainy
    else
      @state = @cloudy
    end
  end

  def ice_break
    puts @state.class
    @state.ice_break
  end

  def choose_fastion
    @state.choose_fastion
  end
end

# Client(main)
obj = Context.new
obj.ice_break
obj.choose_fastion
puts "------" * 5
obj.change_state("RainyDay")
obj.ice_break
obj.choose_fastion
puts "------" * 5
obj.change_state("CloudyDay")
obj.ice_break
obj.choose_fastion
