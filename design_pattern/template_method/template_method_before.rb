#!/usr/bin/ruby

# About Template Method

class Report
  def initialize
	@title = "月次レポート"
	@text = ["順調","OK"]
  end

  def output_reort
    puts "<html>"
    puts "<head>"
    puts "<title> #{@title} </title>"
    puts "</head>"
	puts "<body>"
	@text.each do |line|
      puts "<p>#{line}</p>"
	end
	puts "</body>"
    puts "</html>"
  end
end

report = Report.new
report.output_reort
