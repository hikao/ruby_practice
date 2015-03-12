#!/usr/bin/ruby

(2..100).each do |hoge|
  sqrt = Math.sqrt(hoge)
  p sqrt
  factor_found = (2..sqrt).any? {|i| hoge % i == 0}
  if factor_found then 
	p "#{factor_found} is sosuu."
  end
end
