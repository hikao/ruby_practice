#!/usr/bin/ruby

require 'csv'

puts [
  %w(foo bar baz),
  %w(hoge piyo fuga)
].map(&:to_csv).join

puts '========'
headers = %w(name age gender)
people = [
  ['alice', 14, 'female'],
  ['danny', 27, 'unkown'],
  ['bob', 15, 'male']
]

csv_str = CSV.generate('', write_headers: true, headers: headers) { |csv|
  people.each do |person|
    csv << person
  end
}
puts csv_str
