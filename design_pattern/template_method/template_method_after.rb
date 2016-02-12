#!/usr/bin/ruby

# About Template Method

class Report
  def initialize
	  @title = "月次レポート"
	  @text = ["順調","OK"]
  end

  def output_report
	  output_start
	  output_head
	  output_body_start
	  output_body
	  output_body_end
	  output_end
  end

  def output_start
    raise "Called abst method. output_start"
  end

  def output_head
    raise "Called abst method. output_head"
  end

  def output_body_start
    raise "Called abst method. output_body_start"
  end

  def output_body
    raise "Called abst method. output_body"
  end

  def output_body_end
    raise "Called abst method. output_body_start"
  end

  def output_end
    raise "Called abst method. output_end"
  end
end

class HtmlReport < Report
  def output_start
    puts "<html>"
  end

  def output_head
    puts "<head>"
    puts "<title> #{@title} </title>"
    puts "</head>"
  end

  def output_body_start
	puts "<body>"
  end

  def output_body
	@text.each do |line|
      puts "<p>#{line}</p>"
	end
  end

  def output_body_end
	puts "</body>"
  end

  def output_end
    puts "</html>"
  end
end

class TextReport < Report
  def output_start
    puts "##### This is TextReport #####"
  end

  def output_head
    puts "#{@title}"
  end

  def output_body_start
    puts "今の所順調です。"
  end

  def output_body
  end

  def output_body_end
  end

  def output_end
  end
end

h_report = HtmlReport.new
h_report.output_report

puts "\n\n\n" 
t_report = TextReport.new
t_report.output_report
