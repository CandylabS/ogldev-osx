# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.7.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.7.2/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/ssmilkshake/ogldev-osx

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/ssmilkshake/ogldev-osx/build

# Include any dependencies generated for this target.
include CMakeFiles/tutorial03.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/tutorial03.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tutorial03.dir/flags.make

CMakeFiles/tutorial03.dir/src/tutorial03/tutorial03.cpp.o: CMakeFiles/tutorial03.dir/flags.make
CMakeFiles/tutorial03.dir/src/tutorial03/tutorial03.cpp.o: ../src/tutorial03/tutorial03.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/ssmilkshake/ogldev-osx/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/tutorial03.dir/src/tutorial03/tutorial03.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tutorial03.dir/src/tutorial03/tutorial03.cpp.o -c /Users/ssmilkshake/ogldev-osx/src/tutorial03/tutorial03.cpp

CMakeFiles/tutorial03.dir/src/tutorial03/tutorial03.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tutorial03.dir/src/tutorial03/tutorial03.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/ssmilkshake/ogldev-osx/src/tutorial03/tutorial03.cpp > CMakeFiles/tutorial03.dir/src/tutorial03/tutorial03.cpp.i

CMakeFiles/tutorial03.dir/src/tutorial03/tutorial03.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tutorial03.dir/src/tutorial03/tutorial03.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/ssmilkshake/ogldev-osx/src/tutorial03/tutorial03.cpp -o CMakeFiles/tutorial03.dir/src/tutorial03/tutorial03.cpp.s

CMakeFiles/tutorial03.dir/src/tutorial03/tutorial03.cpp.o.requires:

.PHONY : CMakeFiles/tutorial03.dir/src/tutorial03/tutorial03.cpp.o.requires

CMakeFiles/tutorial03.dir/src/tutorial03/tutorial03.cpp.o.provides: CMakeFiles/tutorial03.dir/src/tutorial03/tutorial03.cpp.o.requires
	$(MAKE) -f CMakeFiles/tutorial03.dir/build.make CMakeFiles/tutorial03.dir/src/tutorial03/tutorial03.cpp.o.provides.build
.PHONY : CMakeFiles/tutorial03.dir/src/tutorial03/tutorial03.cpp.o.provides

CMakeFiles/tutorial03.dir/src/tutorial03/tutorial03.cpp.o.provides.build: CMakeFiles/tutorial03.dir/src/tutorial03/tutorial03.cpp.o


# Object files for target tutorial03
tutorial03_OBJECTS = \
"CMakeFiles/tutorial03.dir/src/tutorial03/tutorial03.cpp.o"

# External object files for target tutorial03
tutorial03_EXTERNAL_OBJECTS =

tutorial03: CMakeFiles/tutorial03.dir/src/tutorial03/tutorial03.cpp.o
tutorial03: CMakeFiles/tutorial03.dir/build.make
tutorial03: CMakeFiles/tutorial03.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/ssmilkshake/ogldev-osx/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable tutorial03"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tutorial03.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tutorial03.dir/build: tutorial03

.PHONY : CMakeFiles/tutorial03.dir/build

CMakeFiles/tutorial03.dir/requires: CMakeFiles/tutorial03.dir/src/tutorial03/tutorial03.cpp.o.requires

.PHONY : CMakeFiles/tutorial03.dir/requires

CMakeFiles/tutorial03.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tutorial03.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tutorial03.dir/clean

CMakeFiles/tutorial03.dir/depend:
	cd /Users/ssmilkshake/ogldev-osx/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/ssmilkshake/ogldev-osx /Users/ssmilkshake/ogldev-osx /Users/ssmilkshake/ogldev-osx/build /Users/ssmilkshake/ogldev-osx/build /Users/ssmilkshake/ogldev-osx/build/CMakeFiles/tutorial03.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tutorial03.dir/depend

