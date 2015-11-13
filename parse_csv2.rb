#!/usr/bin/ruby

require 'csv'

p CSV.parse(%(1,2.5,2015-11-13), converters: :date)
p CSV.parse(%(1,2.5,2015-11-13), converters: :float)
p CSV.parse(%(1,2.5,2015-11-13), converters: :all)

converter = ->(field, field_info) {
  if field_info.index == 1
    field.upcase rescue field
  else
    field
  end
}

# 2つめが大文字になる
p converter
p CSV.parse(%(foo,bar,baz), converters: converter)

