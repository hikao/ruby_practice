#!/usr/bin/ruby

require 'csv'

puts ['I', 'My', 'Me', 'Mine'].to_csv
puts "I,My,Me,Mine".parse_csv

csv = CSV.new(<<EOF)
foo,bar,baz
hoge,fuga,moga
EOF

csv.each do |row|
  p row.join('|')
end

p '======='

data = <<EOS
foo,bar,baz
hoge,fuga,moga
EOS

CSV.parse(data) do |row|
  p row.join('*')
end
