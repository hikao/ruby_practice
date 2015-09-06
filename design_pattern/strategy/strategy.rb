#!/usr/bin/ruby

# About strategy method

# Context
class Report
  attr_reader :title, :text
  attr_accessor :format
  def initialize(format)
    @title = "月次レポート"
	@text = ["順調", "OK"]
	@format = format
  end

  def output_report
    @format.output_report(@title, @text)
  end
end

# Strategy
class Formatter
  def output_report
    raise 'Abst method called!!'
  end
end

class TextReport < Formatter
  def output_report(title, text)
    puts "##### This is text report file #####"
    puts "#{title}"
	text.each do |line|
      puts "#{line}"
	end
  end
end

class HTMLReport < Formatter
  def initialize
  end
  def output_report(title, text)
    puts self.class
    puts "<html>"
    puts "<head>"
    puts "<title> #{title} </title>"
    puts "</head>"
	puts "<body>"
	text.each do |line|
      puts "<p>#{line}</p>"
	end
	puts "</body>"
    puts "</html>"
  end
end

html = Report.new(HTMLReport.new)
html.output_report
puts "===================="

text = Report.new(TextReport.new)
text.output_report
puts "===================="
report = Report.new(HTMLReport.new)
report.output_report
puts "===================="
report.format = TextReport.new
report.output_report



