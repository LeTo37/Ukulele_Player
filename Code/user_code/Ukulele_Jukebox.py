#!/usr/bin/env python
import serial
# import time

ser = serial.Serial('/dev/ttyUSB0')
ser.baudrate = 230400
ser.timeout = 10.0
if ser.name:
	print("Serial Connection Success")

def main():
	print("Hello!\nWelcome to Ukulele Jukebox!")
	print("Would you like to choose from a list of songs or input your own?")
	while (1):
		ans = raw_input("Please type c to choose a song and i to input your own\n")
		if (ans == 'c'):
			list_songs()
		elif (ans == 'i'):
			input_song()
		else:
			print("Please enter a valid choice")

def list_songs():
	global filename
	print_list_songs()
	song_number = 100
	song_number = raw_input("To choose a song, simply type the number next to it\n")
	while song_number not in {'1','2','3','4','5','6'}:
		print("Please enter a valid choice")
		print_list_songs()
		song_number = raw_input("To choose a song, simply type the number next to it\n")
	pick_song(int(song_number))
	f = open (filename,"r")
	song = f.read() + "\r\n"
	send_song(song)

def input_song():
	song = ""
	print("Get ready to make your own song!")
	print("You will need to enter a chord/note first and then the amount of seconds it needs to be played for")
	print_list_chords()
	print("You will be prompted for chords and seconds. Please enter a '%' as a chord when you are finished!")
	chord =""
	while not (chord == '%'):
		chord = raw_input("Enter Chord: ")
		while chord not in {'G','C','D','Em','Am','F','A','Bm','E','Dm','Fshm','B','Ash','Cshm','Fsh','Abm','Gm','B7','E7','A7','D7','G7','Csh','Am7','Em7','%'}:
			print_list_chords()
			chord = raw_input("Enter Chord: ")
		if not (chord == '%'):
			seconds = raw_input("Enter seconds: ")
			while seconds not in {'1','2','3','4','5','6'}:
				print("Please enter seconds greater than 0 and less than 7")
				seconds = raw_input("Enter seconds: ")
			song = song + chord +","+ seconds + ","
	song = song[:-1]
	if len(song) > 3:
		send_song(song)



def pick_song(arg):
	global filename
	switcher = {
		1: "Redemption_Song",
		2: "Let_it_be",
		3: "Somewhere_over_the_rainbow",
		4: "Riptide",
		5: "Rising_Sun",
		6: "test"
	}
	filename = switcher.get(arg, "test")

def print_list_songs():
	print("Please choose a song from the list below!")
	print("1 -> Redemption Song, Bob Marley (Difficult Strumming)\n"
		+ "2 -> Let it be, The Beatles\n"
		+"3 -> Somewhere over the Rainbow, Israel Kamakawiwo'ole\n"
		+"4 -> Riptide, Vance Joy\n"
		+"5 -> House of the Rising Sun, The Animals\n")

def print_list_chords():
	print("Please pick from the following list of chords only:")
	print("G -> G\n"
		+"C -> C\n"
		+"D -> D\n"
		+"Em -> E minor\n"
		+"A -> A minor\n"
		+"F -> F\n"
		+"A -> A\n"
		+"Bm -> B minor\n"
		+"E -> E\n"
		+"Dm -> D minor\n"
		+"Fshm -> F sharp minor\n"
		+"B -> B\n"
		+"Ash -> A sharp minor\n"
		+"Cshm -> C sharp minor\n"
		+"Fsh -> F sharp\n"
		+"Abm -> A flat minor\n"
		+"G -> G minor\n"
		+"B7 -> B dominant 7\n"
		+"E7 -> E dominant 7\n"
		+"A7 -> A dominant 7\n"
		+"D7 -> D dominant 7\n"
		+"G7 -> G dominant 7\n"
		+"Csh -> C sharp\n"
		+"Am7 -> A dominant 7 minor\n"
		+"Em7 -> E dominant 7 minor\n"
		)

def send_song(song):
	print(song)
	ser.write(song)
	while ser.read():
		ser.read() # Check out how to do this for reals
	ser.flush();

if __name__ == '__main__':
   	try:
   		main()
   	except KeyboardInterrupt:
   		print("script killed")
   		ser.close()


