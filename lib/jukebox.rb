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
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end


 def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index +1}, #{song}"
  end
end

 def play(songs)
  puts "Please enter a song name or number:"
  selection = gets.chomp
  selection = selection.to_i - 1
  if selection > 0 && songs[selection]
    song_name = songs[selection]
    puts "Playing #{song_name}"
  else
    puts "Invalid input, please try again"
  end
end

 def exit_jukebox
  puts "Goodbye"
end

 def run(songs)
  help()
  command = nil
  until command == "exit"
    puts "Please enter a command"
    command = gets.strip
    if command == "help"
      help()
    elsif command == "list"
      list(songs)
    elsif command == "play"
      play(songs)
    elsif command == "exit"
      break
    else
      puts "That is not a valid command"
    end
  end
  if command == "exit"
    exit_jukebox
  end
end

 run(songs)