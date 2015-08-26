!#/usr/bin/ruby

# 親クラスで定義されたクラス変数を子クラスで
# 変更したときのクラス変数の挙動の確認

class Parent
  @@value = "parent"

  # クラス変数のアクセサ
  def change_val(v)
	@@value = v
	puts @@value
  end

  def read_val
    puts @@value
  end
end

class Child_A < Parent
end

class Child_B < Parent
end

#Parent.call_val
# 子クラスAからクラス変数@@valueを変更
a = Child_A.new()
a.read_val
a.change_val("Child_A")

puts "----------"
b = Child_B.new()
b.read_val
b.change_val("Child_Bになった！")

# 出力結果
# parent
# Child_A
# ----------
# Child_A # つまりクラス変数は共通
# Child_Bになった！
