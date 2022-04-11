class Question
 attr_reader :num1, :num2, :answer
 
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = num1 + num2
  end

  def start
    num1 = rand(1..10)
    num2 = rand(1..10)

    puts "New Turn"
    puts "Player #{turn}: What is #{num1} + #{num2}?"
    print "> "

    answer = $stdin.gets.chomp.to_i

    if answer == num1 + num2
      puts "Correct!!!"
      return true
    else 
      puts "Incorrect!!!"
      return false
    end
  end

end