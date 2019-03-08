#!/usr/bin/env python
import serial
import time

ser = serial.Serial('/dev/ttyUSB0')
ser.baudrate = 230400
ser.timeout = 5.0
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
	print("Please choose a song from the list below!")
	print("1 -> Redemption Song, Bob Marley\n")
	song_number = 100
	while song_number  < 0 or song_number > 2:
		song_number = int(raw_input("To choose a song, simply type the number next to it\n"))
	pick_song(song_number)
	f = open (filename,"r")
	song = f.read() + "\r\n"
	ser.write(song)
	print(song)
	# time.sleep(15)
	# ser.flush()
	while ser.read(10) != "Done!\r\n":
		print(ser.write(ser.read(10)))

# def input_song():

def pick_song(arg):
	global filename
	switcher = {
		1: "Redemption_Song",
		2: "test",
	}
	filename = switcher.get(arg, "nothing")

if __name__ == '__main__':
   	try:
   		main()
   	except KeyboardInterrupt:
   		print("script killed")
   		ser.close()


