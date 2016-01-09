#!/usr/bin/ruby

class Library
  def initialize
  end
  puts "Library contents"
end

class Book
  def initializ(auth, title, libraly)
    @auth = auth
    @title = title
    @library = library
  end
end
puts "Title: #{@title}, Author: #{@auth}, Library: #{@library}"

my_library = Library.new
Book.new(:author => "Herman Melville", :title => "Moby-Dick", :library => my_library)
Book.new(:author => "Hans Christian Andersen", :title => "The Ugly Duckling", :library => my_library)
puts my_library

#Library contents:
#Title: Moby-Dick, Author: Herman Melville
#Title: The Ugly Duckling, Author: Hans Christian Andersen
