# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.2.4\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.2.4\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\yzqlwt\Documents\EasyStudio\kernel

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel

# Include any dependencies generated for this target.
include utils\CMakeFiles\utils.dir\depend.make

# Include the progress variables for this target.
include utils\CMakeFiles\utils.dir\progress.make

# Include the compile flags for this target's objects.
include utils\CMakeFiles\utils.dir\flags.make

utils\CMakeFiles\utils.dir\bundle.cpp.obj: utils\CMakeFiles\utils.dir\flags.make
utils\CMakeFiles\utils.dir\bundle.cpp.obj: C:\Users\yzqlwt\Documents\EasyStudio\kernel\utils\bundle.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object utils/CMakeFiles/utils.dir/bundle.cpp.obj"
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\utils
	"C:\PROGRA~2\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.26.28801\bin\Hostx86\x86\cl.exe" @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\utils.dir\bundle.cpp.obj /FdCMakeFiles\utils.dir\utils.pdb /FS -c C:\Users\yzqlwt\Documents\EasyStudio\kernel\utils\bundle.cpp
<<
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel

utils\CMakeFiles\utils.dir\bundle.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utils.dir/bundle.cpp.i"
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\utils
	"C:\PROGRA~2\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.26.28801\bin\Hostx86\x86\cl.exe" > CMakeFiles\utils.dir\bundle.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\yzqlwt\Documents\EasyStudio\kernel\utils\bundle.cpp
<<
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel

utils\CMakeFiles\utils.dir\bundle.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utils.dir/bundle.cpp.s"
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\utils
	"C:\PROGRA~2\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.26.28801\bin\Hostx86\x86\cl.exe" @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\utils.dir\bundle.cpp.s /c C:\Users\yzqlwt\Documents\EasyStudio\kernel\utils\bundle.cpp
<<
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel

utils\CMakeFiles\utils.dir\RequestHelper.cpp.obj: utils\CMakeFiles\utils.dir\flags.make
utils\CMakeFiles\utils.dir\RequestHelper.cpp.obj: C:\Users\yzqlwt\Documents\EasyStudio\kernel\utils\RequestHelper.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object utils/CMakeFiles/utils.dir/RequestHelper.cpp.obj"
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\utils
	"C:\PROGRA~2\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.26.28801\bin\Hostx86\x86\cl.exe" @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\utils.dir\RequestHelper.cpp.obj /FdCMakeFiles\utils.dir\utils.pdb /FS -c C:\Users\yzqlwt\Documents\EasyStudio\kernel\utils\RequestHelper.cpp
<<
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel

utils\CMakeFiles\utils.dir\RequestHelper.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utils.dir/RequestHelper.cpp.i"
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\utils
	"C:\PROGRA~2\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.26.28801\bin\Hostx86\x86\cl.exe" > CMakeFiles\utils.dir\RequestHelper.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\yzqlwt\Documents\EasyStudio\kernel\utils\RequestHelper.cpp
<<
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel

utils\CMakeFiles\utils.dir\RequestHelper.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utils.dir/RequestHelper.cpp.s"
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\utils
	"C:\PROGRA~2\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.26.28801\bin\Hostx86\x86\cl.exe" @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\utils.dir\RequestHelper.cpp.s /c C:\Users\yzqlwt\Documents\EasyStudio\kernel\utils\RequestHelper.cpp
<<
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel

utils\CMakeFiles\utils.dir\ResConfigParser.cpp.obj: utils\CMakeFiles\utils.dir\flags.make
utils\CMakeFiles\utils.dir\ResConfigParser.cpp.obj: C:\Users\yzqlwt\Documents\EasyStudio\kernel\utils\ResConfigParser.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object utils/CMakeFiles/utils.dir/ResConfigParser.cpp.obj"
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\utils
	"C:\PROGRA~2\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.26.28801\bin\Hostx86\x86\cl.exe" @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\utils.dir\ResConfigParser.cpp.obj /FdCMakeFiles\utils.dir\utils.pdb /FS -c C:\Users\yzqlwt\Documents\EasyStudio\kernel\utils\ResConfigParser.cpp
<<
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel

utils\CMakeFiles\utils.dir\ResConfigParser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utils.dir/ResConfigParser.cpp.i"
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\utils
	"C:\PROGRA~2\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.26.28801\bin\Hostx86\x86\cl.exe" > CMakeFiles\utils.dir\ResConfigParser.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\yzqlwt\Documents\EasyStudio\kernel\utils\ResConfigParser.cpp
<<
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel

utils\CMakeFiles\utils.dir\ResConfigParser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utils.dir/ResConfigParser.cpp.s"
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\utils
	"C:\PROGRA~2\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.26.28801\bin\Hostx86\x86\cl.exe" @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\utils.dir\ResConfigParser.cpp.s /c C:\Users\yzqlwt\Documents\EasyStudio\kernel\utils\ResConfigParser.cpp
<<
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel

utils\CMakeFiles\utils.dir\Tools.cpp.obj: utils\CMakeFiles\utils.dir\flags.make
utils\CMakeFiles\utils.dir\Tools.cpp.obj: C:\Users\yzqlwt\Documents\EasyStudio\kernel\utils\Tools.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object utils/CMakeFiles/utils.dir/Tools.cpp.obj"
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\utils
	"C:\PROGRA~2\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.26.28801\bin\Hostx86\x86\cl.exe" @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\utils.dir\Tools.cpp.obj /FdCMakeFiles\utils.dir\utils.pdb /FS -c C:\Users\yzqlwt\Documents\EasyStudio\kernel\utils\Tools.cpp
<<
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel

utils\CMakeFiles\utils.dir\Tools.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utils.dir/Tools.cpp.i"
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\utils
	"C:\PROGRA~2\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.26.28801\bin\Hostx86\x86\cl.exe" > CMakeFiles\utils.dir\Tools.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\yzqlwt\Documents\EasyStudio\kernel\utils\Tools.cpp
<<
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel

utils\CMakeFiles\utils.dir\Tools.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utils.dir/Tools.cpp.s"
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\utils
	"C:\PROGRA~2\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.26.28801\bin\Hostx86\x86\cl.exe" @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\utils.dir\Tools.cpp.s /c C:\Users\yzqlwt\Documents\EasyStudio\kernel\utils\Tools.cpp
<<
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel

utils\CMakeFiles\utils.dir\FlaExtension.cpp.obj: utils\CMakeFiles\utils.dir\flags.make
utils\CMakeFiles\utils.dir\FlaExtension.cpp.obj: C:\Users\yzqlwt\Documents\EasyStudio\kernel\utils\FlaExtension.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object utils/CMakeFiles/utils.dir/FlaExtension.cpp.obj"
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\utils
	"C:\PROGRA~2\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.26.28801\bin\Hostx86\x86\cl.exe" @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\utils.dir\FlaExtension.cpp.obj /FdCMakeFiles\utils.dir\utils.pdb /FS -c C:\Users\yzqlwt\Documents\EasyStudio\kernel\utils\FlaExtension.cpp
<<
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel

utils\CMakeFiles\utils.dir\FlaExtension.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utils.dir/FlaExtension.cpp.i"
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\utils
	"C:\PROGRA~2\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.26.28801\bin\Hostx86\x86\cl.exe" > CMakeFiles\utils.dir\FlaExtension.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\yzqlwt\Documents\EasyStudio\kernel\utils\FlaExtension.cpp
<<
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel

utils\CMakeFiles\utils.dir\FlaExtension.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utils.dir/FlaExtension.cpp.s"
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\utils
	"C:\PROGRA~2\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.26.28801\bin\Hostx86\x86\cl.exe" @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\utils.dir\FlaExtension.cpp.s /c C:\Users\yzqlwt\Documents\EasyStudio\kernel\utils\FlaExtension.cpp
<<
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel

# Object files for target utils
utils_OBJECTS = \
"CMakeFiles\utils.dir\bundle.cpp.obj" \
"CMakeFiles\utils.dir\RequestHelper.cpp.obj" \
"CMakeFiles\utils.dir\ResConfigParser.cpp.obj" \
"CMakeFiles\utils.dir\Tools.cpp.obj" \
"CMakeFiles\utils.dir\FlaExtension.cpp.obj"

# External object files for target utils
utils_EXTERNAL_OBJECTS =

utils\utils.lib: utils\CMakeFiles\utils.dir\bundle.cpp.obj
utils\utils.lib: utils\CMakeFiles\utils.dir\RequestHelper.cpp.obj
utils\utils.lib: utils\CMakeFiles\utils.dir\ResConfigParser.cpp.obj
utils\utils.lib: utils\CMakeFiles\utils.dir\Tools.cpp.obj
utils\utils.lib: utils\CMakeFiles\utils.dir\FlaExtension.cpp.obj
utils\utils.lib: utils\CMakeFiles\utils.dir\build.make
utils\utils.lib: utils\CMakeFiles\utils.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX static library utils.lib"
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\utils
	$(CMAKE_COMMAND) -P CMakeFiles\utils.dir\cmake_clean_target.cmake
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\utils
	"C:\PROGRA~2\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.26.28801\bin\Hostx86\x86\link.exe" /lib /nologo /machine:X86 /out:utils.lib @CMakeFiles\utils.dir\objects1.rsp 
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel

# Rule to build all files generated by this target.
utils\CMakeFiles\utils.dir\build: utils\utils.lib

.PHONY : utils\CMakeFiles\utils.dir\build

utils\CMakeFiles\utils.dir\clean:
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\utils
	$(CMAKE_COMMAND) -P CMakeFiles\utils.dir\cmake_clean.cmake
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel
.PHONY : utils\CMakeFiles\utils.dir\clean

utils\CMakeFiles\utils.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\yzqlwt\Documents\EasyStudio\kernel C:\Users\yzqlwt\Documents\EasyStudio\kernel\utils C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\utils C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\utils\CMakeFiles\utils.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : utils\CMakeFiles\utils.dir\depend
