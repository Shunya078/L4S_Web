# if
age = 12
if age >= 12
  p "adult fee\n"
else
  p "child fee\n"
end

gender = if foo.gender == "male" then "male" else "female" end
p gender

# unless
baby = ture
unless baby
  p "feed_meat"
else
  p "feed_milk"
end

# case
case age
when 0 .. 2
  p "baby"
when 3 .. 6
  p "little child"
when 7 .. 12
  p "child"
when 13 .. 18
  p "youth"
else
  "adult"
end