#!/usr/bin/ruby

# about eval

# レシーバの違いを確かめる
eval "p self"
o = Object.new
o.instance_eval { p self }
o.class.class_eval { p self }
Kernel.module_eval {p self }

# Kernel.#eval
p eval "1 + 1"

a = 10
eval "a *= 2"
p a

# evalを使ってメソッドを定義する

class LoggingInstanceVal
  hoge = %w(first_val sec_val third_val)
  hoge.each do |v|
    eval <<-END_OF_DEF
      attr_reader :#{v}, :before_#{v}

      def #{v}=(val)
        @before_#{v} = @#{v}
        @#{v} = val
      end
    END_OF_DEF
  end
end

obj = LoggingInstanceVal.new
obj.first_val = 3
obj.first_val = 4
p obj.first_val
p obj.before_first_val

obj.third_val = :third_val
obj.third_val = "third_val"
p obj.third_val
p obj.before_third_val
