ip2led
======

Simple script to ouput the last byte of the raspberry pi's IP address. Since the raspberry pi is sitting on my desk and I don't always remember its local IP, this is the best way to remember it.

##Dependency

You will need to install the Wiring Pi library, you can download an install it from here: http://wiringpi.com/download-and-install/

##Usage

You will have to build `byte2led` with the Wiring Pi library by running `make` and then run `ip2led` as `root`.

##byte2led

This program takes a binary string as the first argument then the pins:

Usage: `./byte2led <byte> <data> <clock> <latch>`
