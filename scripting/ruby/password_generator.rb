#!/usr/bin/ruby
digits = 8

letters = ['a', 'b', 'c', 'd', 'e','f','g', 'h', 'i', 'j', 'k', 'l', 'm','n','o', 'p',
'q', 'r', 's', 't', 'u','v','w', 'x', 'y', 'z']

upper_letters = []

letters.each do |l|
    upper_letters.push(l.upcase)
end

numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
symbols = [ "!", "#", "$", "%", "&", "(", ")", "*", "+", ",", "-", ".", "/", ":", ";", "<", "=", ">", "?", "@", "[", "]", "_", "{", "}", "~"]

size = 0

$random_password_array = []

def addRandomArray(arrayToAdd,amount)
    while amount != 0
        $random_password_array.push(arrayToAdd[rand(0..arrayToAdd.length)])
        amount -= 1
    end
end

while size != digits
    random_letters = rand(1..digits)
    random_upper_letters = rand(1..digits)
    random_numbers = rand(1..digits)
    random_symbols = rand(1..digits)

    if (random_letters + random_upper_letters + random_numbers + random_symbols) == 8      
        addRandomArray(letters, random_letters)
        addRandomArray( upper_letters, random_upper_letters)
        addRandomArray(numbers, random_numbers)
        addRandomArray(symbols, random_symbols)
        size = digits
    end
end

puts "Nueva clave => #{$random_password_array.shuffle.join("")}"