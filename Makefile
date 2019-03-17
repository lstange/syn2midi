syn2midi: main.o midi.o
	g++ -L../../craigsapp/midifile/lib main.o midi.o -o syn2midi -lmidifile -lavcodec -lm -lz -ldl -lavutil -lavdevice -lavformat -lswresample -lswscale

main.o: main.cpp
	g++ -c -fpermissive -w main.cpp

midi.o: midi.cpp
	g++ -I../../craigsapp/midifile/include -c midi.cpp
