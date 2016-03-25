#!/usr/bin/ruby

# 入力フォームを表示させるかどうかを
# 他の入力フォームの状態で表示するかどうか決めるプログラム
# 例 テキストエリアはチェックボックスが表示されているときに表示する

# Mediatorの抽象クラス
class Mediator

  def create_format
  end

  # 入力エリアを表示させるかどうか
  def judge_to_view
  end

end

# Mediatorの具象クラス
class ConcreteMediator < Mediator

  def initialize
    # フォーマットエリアを生成
    # フォーマットの状態をHashで管理
    @format_area = Hash.new
  end

  def create_format(colleague)
    # 呼び出されたらHashにセット
    @format_area.store(colleague.get_name, colleague)
  end

  # 入力エリアを表示させるかどうか
  def consultation(colleague, to)
    puts @format_area
    @format_area[to].can_i_view_my_format("hoge")
  end

end

# MediatorパターンでいうColleague
class InputFormat
  def initialize(name)
    @name = name
  end

  # nameを返すだけ
  def get_name
    @name
  end

  def set_mediator(mediator)
    @mediator = mediator
  end

end

# 入力フォーマットクラスその1
# 具象Colleague
class Textbox < InputFormat
  def initialize(name)
    super(name)
  end

  def can_i_view_my_format(to)
    @mediator.consultation(self, to)
  end

end

# 入力フォーマットクラスその2
# 具象Colleague
class CheckBox < InputFormat
  def initialize(name)
    super(name)
  end

  def can_i_view_my_format(to)
    @mediator.consultation(self, to)
  end
end

# Client側
mediator = ConcreteMediator.new
textbox = Textbox.new(mediator)
checkbox = CheckBox.new(mediator)

# mediatorに登録する
textbox.set_mediator(mediator)
checkbox.set_mediator(mediator)
mediator.create_format(textbox)
mediator.create_format(checkbox)

# 他のテキストエリアの状態を聞く
textbox.can_i_view_my_format("checkbox")
checkbox.can_i_view_my_format("textbox")
