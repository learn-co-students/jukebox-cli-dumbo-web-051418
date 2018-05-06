#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => 'home/RonRicardo/jukebox-cli-dumbo-web-051418/audio/Emerald-Park/01.mp3',
"LiberTeens" => 'home/RonRicardo/jukebox-cli-dumbo-web-051418/audio/Emerald-Park/02.mp3',
"Hamburg" =>  'home/RonRicardo/jukebox-cli-dumbo-web-051418/audio/Emerald-Park/03.mp3',
"Guiding Light" => 'home/RonRicardo/jukebox-cli-dumbo-web-051418/audio/Emerald-Park/04.mp3',
"Wolf" => 'home/RonRicardo/jukebox-cli-dumbo-web-051418/audio/Emerald-Park/05.mp3',
"Blue" => 'home/RonRicardo/jukebox-cli-dumbo-web-051418/audio/Emerald-Park/06.mp3',
"Graduation Failed" => 'home/RonRicardo/jukebox-cli-dumbo-web-051418/audio/Emerald-Park/07.mp3'
}

def help
  commands = ['- help : displays this help message',
'- list : displays a list of songs you can play',
'- play : lets you choose a song to play',
'- exit : exits this program']
  puts "I accept the following commands:"
  commands.each {|command| puts command}
end

def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and
  #list the songs by name
  puts my_songs.keys
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  error_message = "Invalid input, please try again"
  puts "Please enter a song name:"
  user_input = gets.chomp
  if my_songs.include?(user_input)
    song = my_songs.find{|x| x.include?(user_input)}
    open song[1].to_s
  else
   puts error_message
 end
end

def exit_jukebox
  puts 'Goodbye'
end

def run(my_songs)
  help
  puts "Please enter a command:"
  input = gets.chomp
  case input
  when 'help'
    help
  when 'list'
    list(my_songs)
  when 'play'
    play(my_songs)
  when 'exit'
    exit_jukebox
  end
end
