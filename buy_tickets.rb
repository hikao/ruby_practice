def buy_tickets(*args)
  if args.length > 3
    name = args.join(", ")
    puts "Buying a ticket for #{name}."
  else
    args.each do |a|
      puts "Buying a ticket for #{a}."
    end
  end
end

buy_tickets("Sam", "Dave", "David")
buy_tickets("John", "Paul", "Ringo", "George")
