proc1 = -> arg { puts "In proc1 with #{arg}"}
proc2 = -> arg1, arg2 { puts "In proc2 with #{arg1} and #{arg2}"}
proc3 = ->(arg1, arg2) { puts "In proc3 with #{arg1} and #{arg2}"}

proc1.call "ant"
proc2.call "bee", "cat"
proc3.call "dog", "elk"

def my_if(condition, then_clause, else_clause)
  if condition
    then_clause.call
  else
    else_clause.call
  end
end

5.times do |val|
  my_if val < 3,
        -> { puts "#{val} is small."},
        -> { puts "#{val} is big."}
end

puts ""

def my_while(cond, &body)
  while cond.call
    body.call
  end
end

a = 0
my_while -> { a < 3 } do
  puts a
  a += 1
end