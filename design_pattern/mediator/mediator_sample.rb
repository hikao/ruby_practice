#!/usr/bin/env ruby

# 仲介者インタフェース
class Mediator
  def create_colleagues
  end
  def consultation
  end
end

# 具体的な仲介者
class ConcreteMediator < Mediator
  def initialize
    @colleague = Hash.new
  end

  # 同僚を登録する
  def create_colleagues(colleague)
    @colleague.store(colleague.get_name,colleague)
    puts @colleague
  end

  # 仲介する
  def consultation(colleague, to, msg)
    puts("[mediator] from #{colleague.get_name} to #{to}")
    @colleague[to].read_msg(msg)
  end
end

# 同僚インタフェース
class Colleague
  def initialize(name)
    @name = name
  end

  def get_name
    return(@name)
  end

  def set_mediator(mediator)
    @mediator = mediator
  end
end

# 具体的な同僚1
class ConcreteColleague1 < Colleague
  def initialize(name)
    super(name)
  end

  def twitter(to, msg)
    @mediator.consultation(self, to, msg)
  end

  def read_msg(msg)
    puts("#{@name} received: #{msg}")
  end
end

# 具体的な同僚2
class ConcreteColleague2 < Colleague
  def initialize(name)
    super(name)
  end

  def twitter(to, msg)
    @mediator.consultation(self, to, msg)
  end

  def read_msg(msg)
    puts("#{@name} received: #{msg}")
  end
end

# Client
mediator = ConcreteMediator.new
user1 = ConcreteColleague1.new("user1")
user2 = ConcreteColleague1.new("user2")

# mediatorに登録する
user1.set_mediator(mediator)
user2.set_mediator(mediator)
mediator.create_colleagues(user1)
mediator.create_colleagues(user2)

# 同僚に連絡する
user1.twitter("user2", "I am user1.")
user2.twitter("user1", "I am user2.")
