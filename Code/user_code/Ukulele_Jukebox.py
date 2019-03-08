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
	print_list()
	song_number = 100
	song_number = raw_input("To choose a song, simply type the number next to it\n")
	while song_number not in {'1','2'}:
		print("Please enter a valid choice")
		print_list()
		song_number = raw_input("To choose a song, simply type the number next to it\n")
	pick_song(int(song_number))
	f = open (filename,"r")
	song = f.read() + "\r\n"
	ser.write(song)
	print(song)
	while ser.read():
		print(ser.read()) # Check out how to do this for reals
	ser.flush();

# def input_song():

def pick_song(arg):
	global filename
	switcher = {
		1: "Redemption_Song",
		2: "test",
	}
	filename = switcher.get(arg, "nothing")

def print_list():
	print("Please choose a song from the list below!")
	print("1 -> Redemption Song, Bob Marley (Difficult Strumming)\n"
		+ "2 -> test")

if __name__ == '__main__':
   	try:
   		main()
   	except KeyboardInterrupt:
   		print("script killed")
   		ser.close()


