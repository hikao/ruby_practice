#!/usr/bin/ruby

require 'csv'

p CSV.parse(%(1,2.5,2015-11-13), converters: :date)


