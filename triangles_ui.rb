require './lib/triangles'

def main_menu
  puts 'Enter "t" to enter a new triangle, enter "x" to exit'
    user_choice = gets.chomp
  if user_choice == 't'
    add_triangle
  elsif user_choice == 'x'
    puts "Goodbye!"
  else
    puts "That is not a valid entry"
    main_menu
  end
end

def add_triangle
  puts "Enter the hypotenuse"
    hypotenuse = gets.chomp.to_i
  puts "Enter side a"
    sideA = gets.chomp.to_i
  puts "Enter side b"
    sideB = gets.chomp.to_i

  new_triangle = Triangle.new(hypotenuse, sideA, sideB)
  if new_triangle.valid
    puts "Your triangle is " + new_triangle.type
    main_menu
  else
    puts "NOT A TRIANGLE"
    add_triangle
  end
end
main_menu







