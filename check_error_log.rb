#!/usr/bin/ruby

# check error log

File.open('./error.log') do |file|
  file.each_line do |l|
    puts l if l.include?("ERROR")
  end
end
