def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(array)
  array.sum
end

def multiply(num1, num2)
  num1 * num2
end

def power(num1, num2)
  num1**num2
end

def factorial(num)
  factorial = 1
  if num.zero?
    factorial = 1
  else
    while num.positive?
      factorial *= num
      num -= 1
    end
  end
  factorial
end
