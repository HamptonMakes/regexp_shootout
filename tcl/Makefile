all:
	/usr/bin/gcc -pipe -Wall -O3 -fomit-frame-pointer -pthread -I/usr/include/tcl `pkg-config --cflags --libs glib-2.0` regexdna.c -o tcl -ltcl -lglib-2.0