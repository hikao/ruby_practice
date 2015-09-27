#!/usr/bin/ruby
#
# mutexを使って非同期の処理で且つ排他処理を行う

def countup
  File.open 'counter', File::RDWR | File::CREAT do |f|
    last_count = f.read.to_i

    f.rewind # ファイルの読み込み位置を先頭に戻す
    f.write last_count + 1
  end
end

mutex = Mutex.new

10.times.map { 
  Thread.fork {
    mutex.synchronize { countup }
  }
}.map(&:join)

# 以下だと一つのリソースをめちゃくちゃに読み込んでしまう
# 結果が毎回異なってしまう
#10.times.map { 
#  Thread.fork { countup }
#}.map(&:join)

puts File.read('counter').to_i
