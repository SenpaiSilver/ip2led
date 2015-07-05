ip2led
======

Simple script to ouput the last byte of the raspberry pi's IP address. Since the raspberry pi is sitting on my desk and I don't always remember its local IP, this is the best way to remember it.

##Usage

You need to be root to play with the pi's GPIO, then just run `ip2led`.

##Dependency

You will need to install the Wiring Pi library, you can download an install it from here: http://wiringpi.com/download-and-install/

##byte2led

Usage: `./byte2led <byte> <data> <clock> <latch>`
