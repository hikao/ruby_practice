#!/usr/bin/ruby

# evalを使ったメソッドの定義

# 以下は、インスタンス変数が代入された時に、
# 別のインスタンス変数に値を保持するメソッド
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
p obj.first_val         # => 4
p obj.before_first_val  # => 3

obj.third_val = :third_val
obj.third_val = "third_val"
p obj.third_val        # => third_val
p obj.before_third_val # => :third_val
