songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

# def say_hello(name)
#   "Hi #{name}!"
# end

# puts "Enter your name:"
# users_name = gets.chomp

# puts say_hello(users_name)

def help
  msg = <<-HELP
  I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program
  HELP
  puts msg
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end 
end

def play(songs)
  puts "Please enter a song name or number:"
  requested_song = gets.chomp
  if songs.include?(requested_song)
    puts "Playing #{requested_song}"
  elsif (1..9).to_a.include?(requested_song.to_i)
    puts "Playing #{songs[requested_song.to_i - 1]}"
  else 
    puts "Invalid input, please try again"
  end 
end 

def exit_jukebox
  #this method is the same as in jukebox.rb
  puts "Goodbye"
end

def run(songs)
  # help

  input = ""
  while input
    puts "Please enter a command:"
    input = gets.downcase.strip
    case input
    when 'list'
      list(songs)
    when 'play'
      list(songs)
      play(songs)
    when 'help'
      help
    when 'exit'
      exit_jukebox
      break
    else
      help
    end
  end
end