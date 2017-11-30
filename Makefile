TARGET = libpevents.a

CC = g++
INCLUDES = 
DEFINES = -DWFMO
SOURCES = pevents.cpp
HEADERS = pevents.h
OBJECTS = $(SOURCES:.cpp=.o)

all: $(TARGET)

$(TARGET): $(OBJECTS)
	ar rcs $@ $^

%.o: %.cpp
	$(CC) -c $(INCLUDES) $(DEFINES) $(CFLAGS) -fpermissive $< -o $@

clean:
	rm -f *.o *.a $(TARGET)
