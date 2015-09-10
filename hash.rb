#!/usr/bin/ruby

# Hashでsortを試す
hash = {A: 50, B: 30, C: 9999, D: 1}
# アルファベット順
p hash.sort_by{ |k, v| }
# value順
p hash.sort_by{ |k, v| v}
# value順 降順
p hash.sort_by{ |k,v| -v}
