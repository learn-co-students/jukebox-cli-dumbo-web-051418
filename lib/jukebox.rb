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

def help
  commands = ['- help : displays this help message',
'- list : displays a list of songs you can play',
'- play : lets you choose a song to play',
'- exit : exits this program']
  puts "I accept the following commands:"
  commands.each {|command| puts command}
end

def play(songs)
    error_message = "Invalid input, please try again"
    puts "Please enter a song name or number:"
    user_input = gets.chomp
    if user_input.length < 2
    puts songs[user_input.to_i - 1]
    else user_input.is_a?(String)
    puts songs.include?(user_input) ? "Now Playing: #{songs.find{|x| x.include?(user_input)}}" : error_message
  end
end


def list (arr)
  arr.each_with_index do |song, idx|
    puts "#{idx + 1}. #{song}"
  end
end

def exit_jukebox
  puts 'Goodbye'
end

def run(songs)
  help
  puts "Please enter a command:"
  input = gets.chomp
  case input
  when 'help'
    help
  when 'list'
    list(songs)
  when 'play'
    play(songs)
  when 'exit'
    exit_jukebox
  end
end
