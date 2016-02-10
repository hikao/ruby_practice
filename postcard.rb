#!/usr/bin/ruby

module Mail
  def write(content)
    @message = "Dear #{@recipient},\n\n#{content}\n\nSincerly,\n#{@sender}"
    
    #puts message
  end

  def send
    # date settings
    @now = Time.now
    puts @now.strftime("%a %b %d %H:%M:%S %z Sending a Postcard to Friend.")
  end

  def to_s
    puts "Postcatd of " << @now.to_s
    @message
  end
end

class Postcard
  include Mail
  
  def initialize(sender, recipient)
    @sender, @recipient = sender, recipient
  end
end

 
card = Postcard.new("Me", "Friend")
card.write("Did you forget my birthsday?")
card.send
puts "-" * 60
sleep(2)
puts card

#Tue Mar 22 11:59:16 +0900 2011: Sending a Postcard to Friend.
#------------------------------------------------------------
#Postcard of Tue Mar 22 11:59:16 +0900 2011:
#
#Dear Friend,
#
#Did you forget my birthsday?
#
#Sincerely,
#Me
