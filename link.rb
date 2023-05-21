class Link < Post

  def initialize
    super

    @url = ''

  end

  def read_from_console
    puts "Enter adress of link:"
    @url = STDIN.gets.chomp

    puts "What is the link about?"
    @text = STDIN.gets.chomp
  end

  def to_strings
    time_string = "Created: #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")} \n\r \n\r"
    retun [@url, @text, time_string]

  end

end
    

