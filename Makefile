CC = i686-pc-mingw32-g++
CFLAGS = -g -Wall -s -O3
LIBS = -lm
#PATHS = -L/home/utkarsh/lib/OpenCV-2.4.1/build/lib/ -I/home/utkarsh/lib/OpenCV-2.4.1/include

all: main.cpp FinderPattern.cpp FinderPatternTrio.cpp qrReader.cpp
	$(CC) $(CFLAGS) $(LIBS) -o exec main.cpp FinderPattern.cpp FinderPatternTrio.cpp qrReader.cpp  `i686-pc-mingw32-pkg-config opencv --cflags --libs`


clean:
	$(RM) *.o *~
    
