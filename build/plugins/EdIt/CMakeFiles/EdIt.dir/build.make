# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.0

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/fulvio/Dropbox/ubuntu-devel/my-apps/tedit/source/tedit

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/fulvio/Dropbox/ubuntu-devel/my-apps/tedit/source/tedit/build

# Include any dependencies generated for this target.
include plugins/EdIt/CMakeFiles/EdIt.dir/depend.make

# Include the progress variables for this target.
include plugins/EdIt/CMakeFiles/EdIt.dir/progress.make

# Include the compile flags for this target's objects.
include plugins/EdIt/CMakeFiles/EdIt.dir/flags.make

plugins/EdIt/CMakeFiles/EdIt.dir/backend.cpp.o: plugins/EdIt/CMakeFiles/EdIt.dir/flags.make
plugins/EdIt/CMakeFiles/EdIt.dir/backend.cpp.o: ../plugins/EdIt/backend.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/fulvio/Dropbox/ubuntu-devel/my-apps/tedit/source/tedit/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object plugins/EdIt/CMakeFiles/EdIt.dir/backend.cpp.o"
	cd /home/fulvio/Dropbox/ubuntu-devel/my-apps/tedit/source/tedit/build/plugins/EdIt && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/EdIt.dir/backend.cpp.o -c /home/fulvio/Dropbox/ubuntu-devel/my-apps/tedit/source/tedit/plugins/EdIt/backend.cpp

plugins/EdIt/CMakeFiles/EdIt.dir/backend.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/EdIt.dir/backend.cpp.i"
	cd /home/fulvio/Dropbox/ubuntu-devel/my-apps/tedit/source/tedit/build/plugins/EdIt && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/fulvio/Dropbox/ubuntu-devel/my-apps/tedit/source/tedit/plugins/EdIt/backend.cpp > CMakeFiles/EdIt.dir/backend.cpp.i

plugins/EdIt/CMakeFiles/EdIt.dir/backend.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/EdIt.dir/backend.cpp.s"
	cd /home/fulvio/Dropbox/ubuntu-devel/my-apps/tedit/source/tedit/build/plugins/EdIt && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/fulvio/Dropbox/ubuntu-devel/my-apps/tedit/source/tedit/plugins/EdIt/backend.cpp -o CMakeFiles/EdIt.dir/backend.cpp.s

plugins/EdIt/CMakeFiles/EdIt.dir/backend.cpp.o.requires:
.PHONY : plugins/EdIt/CMakeFiles/EdIt.dir/backend.cpp.o.requires

plugins/EdIt/CMakeFiles/EdIt.dir/backend.cpp.o.provides: plugins/EdIt/CMakeFiles/EdIt.dir/backend.cpp.o.requires
	$(MAKE) -f plugins/EdIt/CMakeFiles/EdIt.dir/build.make plugins/EdIt/CMakeFiles/EdIt.dir/backend.cpp.o.provides.build
.PHONY : plugins/EdIt/CMakeFiles/EdIt.dir/backend.cpp.o.provides

plugins/EdIt/CMakeFiles/EdIt.dir/backend.cpp.o.provides.build: plugins/EdIt/CMakeFiles/EdIt.dir/backend.cpp.o

plugins/EdIt/CMakeFiles/EdIt.dir/mytype.cpp.o: plugins/EdIt/CMakeFiles/EdIt.dir/flags.make
plugins/EdIt/CMakeFiles/EdIt.dir/mytype.cpp.o: ../plugins/EdIt/mytype.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/fulvio/Dropbox/ubuntu-devel/my-apps/tedit/source/tedit/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object plugins/EdIt/CMakeFiles/EdIt.dir/mytype.cpp.o"
	cd /home/fulvio/Dropbox/ubuntu-devel/my-apps/tedit/source/tedit/build/plugins/EdIt && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/EdIt.dir/mytype.cpp.o -c /home/fulvio/Dropbox/ubuntu-devel/my-apps/tedit/source/tedit/plugins/EdIt/mytype.cpp

plugins/EdIt/CMakeFiles/EdIt.dir/mytype.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/EdIt.dir/mytype.cpp.i"
	cd /home/fulvio/Dropbox/ubuntu-devel/my-apps/tedit/source/tedit/build/plugins/EdIt && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/fulvio/Dropbox/ubuntu-devel/my-apps/tedit/source/tedit/plugins/EdIt/mytype.cpp > CMakeFiles/EdIt.dir/mytype.cpp.i

plugins/EdIt/CMakeFiles/EdIt.dir/mytype.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/EdIt.dir/mytype.cpp.s"
	cd /home/fulvio/Dropbox/ubuntu-devel/my-apps/tedit/source/tedit/build/plugins/EdIt && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/fulvio/Dropbox/ubuntu-devel/my-apps/tedit/source/tedit/plugins/EdIt/mytype.cpp -o CMakeFiles/EdIt.dir/mytype.cpp.s

plugins/EdIt/CMakeFiles/EdIt.dir/mytype.cpp.o.requires:
.PHONY : plugins/EdIt/CMakeFiles/EdIt.dir/mytype.cpp.o.requires

plugins/EdIt/CMakeFiles/EdIt.dir/mytype.cpp.o.provides: plugins/EdIt/CMakeFiles/EdIt.dir/mytype.cpp.o.requires
	$(MAKE) -f plugins/EdIt/CMakeFiles/EdIt.dir/build.make plugins/EdIt/CMakeFiles/EdIt.dir/mytype.cpp.o.provides.build
.PHONY : plugins/EdIt/CMakeFiles/EdIt.dir/mytype.cpp.o.provides

plugins/EdIt/CMakeFiles/EdIt.dir/mytype.cpp.o.provides.build: plugins/EdIt/CMakeFiles/EdIt.dir/mytype.cpp.o

plugins/EdIt/CMakeFiles/EdIt.dir/EdIt_automoc.cpp.o: plugins/EdIt/CMakeFiles/EdIt.dir/flags.make
plugins/EdIt/CMakeFiles/EdIt.dir/EdIt_automoc.cpp.o: plugins/EdIt/EdIt_automoc.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/fulvio/Dropbox/ubuntu-devel/my-apps/tedit/source/tedit/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object plugins/EdIt/CMakeFiles/EdIt.dir/EdIt_automoc.cpp.o"
	cd /home/fulvio/Dropbox/ubuntu-devel/my-apps/tedit/source/tedit/build/plugins/EdIt && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/EdIt.dir/EdIt_automoc.cpp.o -c /home/fulvio/Dropbox/ubuntu-devel/my-apps/tedit/source/tedit/build/plugins/EdIt/EdIt_automoc.cpp

plugins/EdIt/CMakeFiles/EdIt.dir/EdIt_automoc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/EdIt.dir/EdIt_automoc.cpp.i"
	cd /home/fulvio/Dropbox/ubuntu-devel/my-apps/tedit/source/tedit/build/plugins/EdIt && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/fulvio/Dropbox/ubuntu-devel/my-apps/tedit/source/tedit/build/plugins/EdIt/EdIt_automoc.cpp > CMakeFiles/EdIt.dir/EdIt_automoc.cpp.i

plugins/EdIt/CMakeFiles/EdIt.dir/EdIt_automoc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/EdIt.dir/EdIt_automoc.cpp.s"
	cd /home/fulvio/Dropbox/ubuntu-devel/my-apps/tedit/source/tedit/build/plugins/EdIt && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/fulvio/Dropbox/ubuntu-devel/my-apps/tedit/source/tedit/build/plugins/EdIt/EdIt_automoc.cpp -o CMakeFiles/EdIt.dir/EdIt_automoc.cpp.s

plugins/EdIt/CMakeFiles/EdIt.dir/EdIt_automoc.cpp.o.requires:
.PHONY : plugins/EdIt/CMakeFiles/EdIt.dir/EdIt_automoc.cpp.o.requires

plugins/EdIt/CMakeFiles/EdIt.dir/EdIt_automoc.cpp.o.provides: plugins/EdIt/CMakeFiles/EdIt.dir/EdIt_automoc.cpp.o.requires
	$(MAKE) -f plugins/EdIt/CMakeFiles/EdIt.dir/build.make plugins/EdIt/CMakeFiles/EdIt.dir/EdIt_automoc.cpp.o.provides.build
.PHONY : plugins/EdIt/CMakeFiles/EdIt.dir/EdIt_automoc.cpp.o.provides

plugins/EdIt/CMakeFiles/EdIt.dir/EdIt_automoc.cpp.o.provides.build: plugins/EdIt/CMakeFiles/EdIt.dir/EdIt_automoc.cpp.o

# Object files for target EdIt
EdIt_OBJECTS = \
"CMakeFiles/EdIt.dir/backend.cpp.o" \
"CMakeFiles/EdIt.dir/mytype.cpp.o" \
"CMakeFiles/EdIt.dir/EdIt_automoc.cpp.o"

# External object files for target EdIt
EdIt_EXTERNAL_OBJECTS =

plugins/EdIt/EdIt/libEdIt.so: plugins/EdIt/CMakeFiles/EdIt.dir/backend.cpp.o
plugins/EdIt/EdIt/libEdIt.so: plugins/EdIt/CMakeFiles/EdIt.dir/mytype.cpp.o
plugins/EdIt/EdIt/libEdIt.so: plugins/EdIt/CMakeFiles/EdIt.dir/EdIt_automoc.cpp.o
plugins/EdIt/EdIt/libEdIt.so: plugins/EdIt/CMakeFiles/EdIt.dir/build.make
plugins/EdIt/EdIt/libEdIt.so: /usr/lib/x86_64-linux-gnu/libQt5Qml.so.5.4.1
plugins/EdIt/EdIt/libEdIt.so: /usr/lib/x86_64-linux-gnu/libQt5Quick.so.5.4.1
plugins/EdIt/EdIt/libEdIt.so: /usr/lib/x86_64-linux-gnu/libQt5DBus.so.5.4.1
plugins/EdIt/EdIt/libEdIt.so: /usr/lib/x86_64-linux-gnu/libQt5Qml.so.5.4.1
plugins/EdIt/EdIt/libEdIt.so: /usr/lib/x86_64-linux-gnu/libQt5Network.so.5.4.1
plugins/EdIt/EdIt/libEdIt.so: /usr/lib/x86_64-linux-gnu/libQt5Gui.so.5.4.1
plugins/EdIt/EdIt/libEdIt.so: /usr/lib/x86_64-linux-gnu/libQt5Core.so.5.4.1
plugins/EdIt/EdIt/libEdIt.so: plugins/EdIt/CMakeFiles/EdIt.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared module EdIt/libEdIt.so"
	cd /home/fulvio/Dropbox/ubuntu-devel/my-apps/tedit/source/tedit/build/plugins/EdIt && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/EdIt.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
plugins/EdIt/CMakeFiles/EdIt.dir/build: plugins/EdIt/EdIt/libEdIt.so
.PHONY : plugins/EdIt/CMakeFiles/EdIt.dir/build

plugins/EdIt/CMakeFiles/EdIt.dir/requires: plugins/EdIt/CMakeFiles/EdIt.dir/backend.cpp.o.requires
plugins/EdIt/CMakeFiles/EdIt.dir/requires: plugins/EdIt/CMakeFiles/EdIt.dir/mytype.cpp.o.requires
plugins/EdIt/CMakeFiles/EdIt.dir/requires: plugins/EdIt/CMakeFiles/EdIt.dir/EdIt_automoc.cpp.o.requires
.PHONY : plugins/EdIt/CMakeFiles/EdIt.dir/requires

plugins/EdIt/CMakeFiles/EdIt.dir/clean:
	cd /home/fulvio/Dropbox/ubuntu-devel/my-apps/tedit/source/tedit/build/plugins/EdIt && $(CMAKE_COMMAND) -P CMakeFiles/EdIt.dir/cmake_clean.cmake
.PHONY : plugins/EdIt/CMakeFiles/EdIt.dir/clean

plugins/EdIt/CMakeFiles/EdIt.dir/depend:
	cd /home/fulvio/Dropbox/ubuntu-devel/my-apps/tedit/source/tedit/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/fulvio/Dropbox/ubuntu-devel/my-apps/tedit/source/tedit /home/fulvio/Dropbox/ubuntu-devel/my-apps/tedit/source/tedit/plugins/EdIt /home/fulvio/Dropbox/ubuntu-devel/my-apps/tedit/source/tedit/build /home/fulvio/Dropbox/ubuntu-devel/my-apps/tedit/source/tedit/build/plugins/EdIt /home/fulvio/Dropbox/ubuntu-devel/my-apps/tedit/source/tedit/build/plugins/EdIt/CMakeFiles/EdIt.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : plugins/EdIt/CMakeFiles/EdIt.dir/depend

