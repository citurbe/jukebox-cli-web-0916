require 'pry'

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
	puts "I accept the following commands:"
	puts "- help : displays this help message"
	puts "- list : displays a list of songs you can play"
	puts "- play : lets you choose a song to play"
	puts "- exit : exits this program"
end

def list (songs)
	songs.each_with_index do |song, index|
		puts "#{index + 1}. #{song}"
	end
end


def play(songs)
	puts "Please enter a song name or number:"
	input = gets.chomp
	if input == "0"
		puts "Invalid input, please try again"
	else
		if input.to_i == 0
			if songs.include?(input)
				puts "Playing #{input}"
			else
				puts "Invalid input, please try again"
			end
		else
			if input.to_i > songs.length
				puts "Invalid input, please try again"
			else
				puts "Playing #{songs[input.to_i-1]}"
			end
		end
	end

		
	

end


def exit_jukebox
	puts "Goodbye"
end

def run(songs)
	help
	puts "Please enter a command:"
	command = gets.chomp
	while command != "exit"
		
		case command
		when "help"
			help
		when "list"
			list(songs)
		when "play"
			play(songs)

		else
			puts "Sorry, I don't recognize that"
		end
		command = gets.chomp
	end
	exit_jukebox
end