#!/usr/bin/ruby

class TestMethod
  %w[driver assert fails setup teardown].each do |attr|
    attr_accessor attr
  end
end

t = TestMethod.new
t.driver = 'firefox driver'
p t.driver
t.driver = 'chrome driver'
p t.driver
