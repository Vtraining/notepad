require_relative 'post.rb'
require_relative 'link.rb'
require_relative 'task.rb'
require_relative 'memo.rb'


puts "Hello I am is your`s notepad!"
puts "What do you whant to write in notepad?"

choices = Post.post_types

choice = -1

until choice >= 0 && choice < choice.size

  choices.each_with_index do |type, index|
    puts "\t #{index}. #{type}"
  end

  choice = STDIN.gets.chomp.to_i
end


entry = Post.create(choice)

entry.read_from_console

entry.save

puts "Congratulalions! Everything that you write is saving"
