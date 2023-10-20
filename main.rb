def classify_number(num)
    if num < 1
      return "Please enter a positive integer."
    end
  
    divisors_sum = (1...num).select { |i| num % i == 0 }.sum
  
    if divisors_sum == num
      return "Perfect Number"
    elsif divisors_sum < num
      return "Deficient Number"
    else
      return "Abundant Number"
    end
  end
  
  begin
    print "Enter a positive integer: "
    user_input = gets.chomp.to_i
  
    result = classify_number(user_input)
    puts "The number #{user_input} is a #{result}."
  rescue
    puts "Invalid input. Please enter a positive integer."
  end
  