ary_1 = [12, 'dog', 'cat', 'bird', 'monkey']
ary_2 = [12, 'dog', 'cat', 'bird', 'monkey']
p ary_1.object_id
p ary_2.object_id

str1 = "string"
str2 = "string"
p str1.object_id
p str2.object_id

if str1 == str2 then
  p 'str1 == str2'
end
if str1.equal?(str2) then
  p 'str1 == str2'
end
