#!/usr/bin/ruby

class Weather
  # 天気の状態を保持する
  # 雨ならRainy
  def initialize(weather)
    @weather = weather
  end

  def ice_break
    if @weather == "Sunny"
      puts @weather
      puts "今日は晴れて、良い天気ですねー!!!"
    elsif @weather == "Rainy"
      puts "今日は雨がすごいっすねー!"
    end
  end

  def choose_fastion
    if @weather == "Sunny"
      puts "なのでスニーカーを履こう"
    elsif @weather == "Rainy"
      puts "なので長靴を履こう"
    end
  end

  def switch_weather(weather)
    @weather = weather
  end
end

obj = Weather.new("Sunny")
obj.ice_break
obj.choose_fastion
puts "------" * 5
obj.switch_weather("Rainy")
obj.ice_break
obj.choose_fastion

