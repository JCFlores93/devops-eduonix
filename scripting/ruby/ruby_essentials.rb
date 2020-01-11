#!/usr/bin/ruby
puts "Hello world!"
print "Hello world\n"

myname = "Jean"
puts "My name is #{myname}"

printf "My name is %s\n", myname
printf "We are learning %d languages \n", 3
# puts %q{Her pet's name is Kenzy and she loves "Drawing"}

# usernames = ['jdoe', 'peter', 'mary', 'bob']
# Hash
# usernames = {
#     "name" => "jdoe",
#     "age" => 31,
#     "job" => "DevOps Engineer",
# }

usernames = [
    {
    :name => "jdoe",
    :age => 31,
    :job => "DevOps Engineer",
},
{
    :name => "linda",
    :age => 25,
    :job => "sysadmin",
},
{
    :name => "bob",
    :age => 29,
    :job => "dev",
},
{
    :name => "mark",
    :age => 35,
    :job => "tester",
}
]

puts usernames[0][:name]

usernames.each do |u|
    puts "#{u[:name]}: #{u[:age]}"
end

langs = {
    :name => "compiled",
    :examples => ["C", "C++", "C#", "Java"]
}

langs[:examples].each do |l|
    puts "Language name is #{l}"
end

# Modules
require "./myfunctions"
require "json"
MyFunctions.sayHello
content = File.read("file.json")
info = JSON.parse(content)
puts info["name"]