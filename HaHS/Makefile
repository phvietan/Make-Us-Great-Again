###########################################################
# Makefile for CPP 14 on Linux
# Copyright : huynhsamha
# Github 	: @huynhsamha
# Email 	: huynhsamha@gmail.com
###########################################################

# Libraries on which TARGET depends
LIBS = \
	-lpthread

# Name of the executable
# TARGET = $(shell basename "$$PWD")
TARGET = main

# Place to store all generated files
BUILD_DIR = build

# All source files. Header files are detected automatically
# SRCS = $(shell find . -path ./$(BUILD_DIR) -prune -o -name '*.cpp' -ls | awk '{$$1=$$2=$$3=$$4=$$5=$$6=$$7=$$8=$$9=$$10=""; print $0}' | sed 's/^\s*//' | grep -v -e '.zip\|.tar')
SRCS = main.cpp

# Compiler. On non-gnu systems you may want to change this
CC = g++

# C++ version
EXTRAFLAGS = -std=gnu++14

SHELL = /bin/bash
DEPENDENCY_LIST = $(BUILD_DIR)/depend
OBJS = $(addprefix $(BUILD_DIR)/, $(SRCS:.cpp=.o))

.PHONY: all clean

all: $(BUILD_DIR) $(DEPENDENCY_LIST) $(TARGET)

$(BUILD_DIR):
	mkdir $(BUILD_DIR)

$(TARGET): $(OBJS)
	$(CC) $(EXTRAFLAGS) -o $(TARGET) $(OBJS) $(LIBS)

# Every .o file will be matched here, and will be compiled from a .cpp file. Other dependencies are listed with '-include $(DEPENDENCY_LIST)'.
$(BUILD_DIR)/%.o: %.cpp
	$(CC) $(EXTRAFLAGS) -c $< -o $@

# -MM outputs Makefile style dependencies of a source file
$(DEPENDENCY_LIST): $(SRCS) | $(BUILD_DIR)
	$(RM) $(DEPENDENCY_LIST)
	$(CC) $(EXTRAFLAGS) -MM $^ | awk '{print "$(BUILD_DIR)/./" $$0;}' >> $(DEPENDENCY_LIST)

# '-' prevents warning on first build or build after clean because dependencies files does not exist
-include $(DEPENDENCY_LIST)

# A note for maintainers of this Makefile: DO NOT REMOVE WHOLE BUILD_DIR! (would be a disaster if BUILD_DIR equals '.')
clean:
	$(RM) $(BUILD_DIR)/*.o *~ $(TARGET) $(DEPENDENCY_LIST)