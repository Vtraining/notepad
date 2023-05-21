require 'date'

class Task < Post
  def innitialize
    super

    @due_date = Time.now

  end

  def read_from_console
    puts "What need to do?"
    @text = STDIN.gets.chomp

    puts "Print deadline date. Put the date in DD.MM.YYYY format, for example 12.05.2003"
    input = STDIN.gets.chomp

    @due_date = Date.parse(input)
  end
  
  def to_strings
  time_string = "Created: #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")} \n\r \n\r"

  deadline = "Deadline is: #{due_date}"

  return [deadline, @text, time_string]

  end

end
