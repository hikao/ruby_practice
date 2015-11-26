#!/usr/bin/ruby

def create_proc
  str = 'from create_proc'
  Proc.new { str }
end

proc_obj = create_proc

str = 'from toplevel'
puts proc_obj.call
puts proc_obj.call
puts proc_obj.call
