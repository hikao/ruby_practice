#!/usr/bin/ruby

def clever_print(*args)

  ary = []
  args.each do |arg|
    if arg.class == Hash
     ary << arg.to_a.join(" ")
    else
      ary << arg
    end
  end

  puts ary.join(" ")

end

clever_print(["Ruby"], "the", ["Programming", "Language"])
# => Ruby the Programming Language
print "\n"
