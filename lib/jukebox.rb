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
  puts 'I accept the following commands:'
  puts '- help : display the help message'
  puts '- list : display a list of songs you can play'
  puts '- play : lets you choose a song to play'
  puts '- exit : exits this program'
end

def list(songs)
  songs.each_with_index do |song, num|
    puts "#{num + 1}. #{song}"
  end
end

def play(songs)
  puts 'Please enter a song name or number:'
  input = gets.chomp
  case input
    when '1', "Phoenix - 1901"
      puts 'Playing Phoenix - 1901'
    when '2', 'Tokyo Police Club - Wait Up'
      puts 'Tokyo Police Club - Wait Up'
    when '3', 'Sufjan Stevens - Too Much'
      puts 'Sufjan Stevens - Too Much'
    when '4', 'The Naked and the Famous - Young Blood'
      puts 'The Naked and the Famous - Young Blood'
    when '5', '(Far From) Home - Tiga'
      puts '(Far From) Home - Tiga'
    when '6', 'The Cults - Abducted'
      puts 'The Cults - Abducted'
    when '7', 'Phoenix - Consolation Prizes'
      puts 'Phoenix - Consolation Prizes'
    when '8', 'Harry Chapin - Cats in the Cradle'
      puts 'Harry Chapin - Cats in the Cradle'
    when '9', 'Amos Lee - Keep It Loose, Keep It Tight'
      puts 'Amos Lee - Keep It Loose, Keep It Tight'
    else
      puts 'Invalid input, please try again'
  end
end

def exit_jukebox 
  puts 'Goodbye'
end

def run(songs)
  help 
  puts 'Please enter a command:'
  command = gets.chomp
  until command == 'exit'
    case command 
      when 'help' 
        help 
      when 'list' 
        list(songs)
      when 'play'
        play(songs)
      when 'exit'
        exit_jukebox
      else
        'Invalid command'
    end
    command = gets.chomp
  end
  exit_jukebox
end 
