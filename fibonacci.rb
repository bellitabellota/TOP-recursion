def fibs(num)
  index = 1
  array = []

  while index <= num
    if index == 1
      array.push(0)
    elsif index == 2
      array.push(1)
    else
      array.push(array[-2] + array[-1])
    end
    index += 1
  end
  array
end

puts "Iterativ approach:"
p fibs(1)
p fibs(2)
p fibs(8)

def fib_rec(num, array = [0, 1])
  if num == 1
    array.pop
    array
  elsif num == 2
    array
  else
    array.push(array[-2] + array[-1])
    num -= 1
    fib_rec(num, array)
  end
end

puts "Recursiv approach:"
p fib_rec(1)
p fib_rec(2)
p fib_rec(8)
