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
include CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\depend.make

# Include the progress variables for this target.
include CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\progress.make

# Include the compile flags for this target's objects.
include CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\flags.make

CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\flatc.cpp.obj: CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\flags.make
CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\flatc.cpp.obj: C:\Users\yzqlwt\Documents\EasyStudio\kernel\CsdSerialize\flatbuffers\flatc.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CsdSerialize/flatbuffers/CMakeFiles/ext_flatbuffers.dir/flatc.cpp.obj"
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\CsdSerialize\flatbuffers
	"C:\PROGRA~2\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.26.28801\bin\Hostx86\x86\cl.exe" @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\ext_flatbuffers.dir\flatc.cpp.obj /FdCMakeFiles\ext_flatbuffers.dir\ext_flatbuffers.pdb /FS -c C:\Users\yzqlwt\Documents\EasyStudio\kernel\CsdSerialize\flatbuffers\flatc.cpp
<<
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel

CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\flatc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ext_flatbuffers.dir/flatc.cpp.i"
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\CsdSerialize\flatbuffers
	"C:\PROGRA~2\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.26.28801\bin\Hostx86\x86\cl.exe" > CMakeFiles\ext_flatbuffers.dir\flatc.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\yzqlwt\Documents\EasyStudio\kernel\CsdSerialize\flatbuffers\flatc.cpp
<<
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel

CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\flatc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ext_flatbuffers.dir/flatc.cpp.s"
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\CsdSerialize\flatbuffers
	"C:\PROGRA~2\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.26.28801\bin\Hostx86\x86\cl.exe" @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\ext_flatbuffers.dir\flatc.cpp.s /c C:\Users\yzqlwt\Documents\EasyStudio\kernel\CsdSerialize\flatbuffers\flatc.cpp
<<
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel

CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\idl_gen_cpp.cpp.obj: CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\flags.make
CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\idl_gen_cpp.cpp.obj: C:\Users\yzqlwt\Documents\EasyStudio\kernel\CsdSerialize\flatbuffers\idl_gen_cpp.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CsdSerialize/flatbuffers/CMakeFiles/ext_flatbuffers.dir/idl_gen_cpp.cpp.obj"
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\CsdSerialize\flatbuffers
	"C:\PROGRA~2\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.26.28801\bin\Hostx86\x86\cl.exe" @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\ext_flatbuffers.dir\idl_gen_cpp.cpp.obj /FdCMakeFiles\ext_flatbuffers.dir\ext_flatbuffers.pdb /FS -c C:\Users\yzqlwt\Documents\EasyStudio\kernel\CsdSerialize\flatbuffers\idl_gen_cpp.cpp
<<
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel

CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\idl_gen_cpp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ext_flatbuffers.dir/idl_gen_cpp.cpp.i"
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\CsdSerialize\flatbuffers
	"C:\PROGRA~2\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.26.28801\bin\Hostx86\x86\cl.exe" > CMakeFiles\ext_flatbuffers.dir\idl_gen_cpp.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\yzqlwt\Documents\EasyStudio\kernel\CsdSerialize\flatbuffers\idl_gen_cpp.cpp
<<
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel

CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\idl_gen_cpp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ext_flatbuffers.dir/idl_gen_cpp.cpp.s"
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\CsdSerialize\flatbuffers
	"C:\PROGRA~2\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.26.28801\bin\Hostx86\x86\cl.exe" @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\ext_flatbuffers.dir\idl_gen_cpp.cpp.s /c C:\Users\yzqlwt\Documents\EasyStudio\kernel\CsdSerialize\flatbuffers\idl_gen_cpp.cpp
<<
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel

CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\idl_gen_fbs.cpp.obj: CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\flags.make
CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\idl_gen_fbs.cpp.obj: C:\Users\yzqlwt\Documents\EasyStudio\kernel\CsdSerialize\flatbuffers\idl_gen_fbs.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CsdSerialize/flatbuffers/CMakeFiles/ext_flatbuffers.dir/idl_gen_fbs.cpp.obj"
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\CsdSerialize\flatbuffers
	"C:\PROGRA~2\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.26.28801\bin\Hostx86\x86\cl.exe" @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\ext_flatbuffers.dir\idl_gen_fbs.cpp.obj /FdCMakeFiles\ext_flatbuffers.dir\ext_flatbuffers.pdb /FS -c C:\Users\yzqlwt\Documents\EasyStudio\kernel\CsdSerialize\flatbuffers\idl_gen_fbs.cpp
<<
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel

CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\idl_gen_fbs.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ext_flatbuffers.dir/idl_gen_fbs.cpp.i"
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\CsdSerialize\flatbuffers
	"C:\PROGRA~2\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.26.28801\bin\Hostx86\x86\cl.exe" > CMakeFiles\ext_flatbuffers.dir\idl_gen_fbs.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\yzqlwt\Documents\EasyStudio\kernel\CsdSerialize\flatbuffers\idl_gen_fbs.cpp
<<
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel

CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\idl_gen_fbs.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ext_flatbuffers.dir/idl_gen_fbs.cpp.s"
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\CsdSerialize\flatbuffers
	"C:\PROGRA~2\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.26.28801\bin\Hostx86\x86\cl.exe" @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\ext_flatbuffers.dir\idl_gen_fbs.cpp.s /c C:\Users\yzqlwt\Documents\EasyStudio\kernel\CsdSerialize\flatbuffers\idl_gen_fbs.cpp
<<
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel

CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\idl_gen_general.cpp.obj: CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\flags.make
CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\idl_gen_general.cpp.obj: C:\Users\yzqlwt\Documents\EasyStudio\kernel\CsdSerialize\flatbuffers\idl_gen_general.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CsdSerialize/flatbuffers/CMakeFiles/ext_flatbuffers.dir/idl_gen_general.cpp.obj"
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\CsdSerialize\flatbuffers
	"C:\PROGRA~2\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.26.28801\bin\Hostx86\x86\cl.exe" @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\ext_flatbuffers.dir\idl_gen_general.cpp.obj /FdCMakeFiles\ext_flatbuffers.dir\ext_flatbuffers.pdb /FS -c C:\Users\yzqlwt\Documents\EasyStudio\kernel\CsdSerialize\flatbuffers\idl_gen_general.cpp
<<
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel

CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\idl_gen_general.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ext_flatbuffers.dir/idl_gen_general.cpp.i"
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\CsdSerialize\flatbuffers
	"C:\PROGRA~2\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.26.28801\bin\Hostx86\x86\cl.exe" > CMakeFiles\ext_flatbuffers.dir\idl_gen_general.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\yzqlwt\Documents\EasyStudio\kernel\CsdSerialize\flatbuffers\idl_gen_general.cpp
<<
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel

CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\idl_gen_general.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ext_flatbuffers.dir/idl_gen_general.cpp.s"
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\CsdSerialize\flatbuffers
	"C:\PROGRA~2\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.26.28801\bin\Hostx86\x86\cl.exe" @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\ext_flatbuffers.dir\idl_gen_general.cpp.s /c C:\Users\yzqlwt\Documents\EasyStudio\kernel\CsdSerialize\flatbuffers\idl_gen_general.cpp
<<
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel

CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\idl_gen_go.cpp.obj: CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\flags.make
CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\idl_gen_go.cpp.obj: C:\Users\yzqlwt\Documents\EasyStudio\kernel\CsdSerialize\flatbuffers\idl_gen_go.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CsdSerialize/flatbuffers/CMakeFiles/ext_flatbuffers.dir/idl_gen_go.cpp.obj"
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\CsdSerialize\flatbuffers
	"C:\PROGRA~2\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.26.28801\bin\Hostx86\x86\cl.exe" @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\ext_flatbuffers.dir\idl_gen_go.cpp.obj /FdCMakeFiles\ext_flatbuffers.dir\ext_flatbuffers.pdb /FS -c C:\Users\yzqlwt\Documents\EasyStudio\kernel\CsdSerialize\flatbuffers\idl_gen_go.cpp
<<
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel

CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\idl_gen_go.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ext_flatbuffers.dir/idl_gen_go.cpp.i"
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\CsdSerialize\flatbuffers
	"C:\PROGRA~2\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.26.28801\bin\Hostx86\x86\cl.exe" > CMakeFiles\ext_flatbuffers.dir\idl_gen_go.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\yzqlwt\Documents\EasyStudio\kernel\CsdSerialize\flatbuffers\idl_gen_go.cpp
<<
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel

CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\idl_gen_go.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ext_flatbuffers.dir/idl_gen_go.cpp.s"
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\CsdSerialize\flatbuffers
	"C:\PROGRA~2\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.26.28801\bin\Hostx86\x86\cl.exe" @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\ext_flatbuffers.dir\idl_gen_go.cpp.s /c C:\Users\yzqlwt\Documents\EasyStudio\kernel\CsdSerialize\flatbuffers\idl_gen_go.cpp
<<
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel

CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\idl_gen_text.cpp.obj: CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\flags.make
CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\idl_gen_text.cpp.obj: C:\Users\yzqlwt\Documents\EasyStudio\kernel\CsdSerialize\flatbuffers\idl_gen_text.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CsdSerialize/flatbuffers/CMakeFiles/ext_flatbuffers.dir/idl_gen_text.cpp.obj"
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\CsdSerialize\flatbuffers
	"C:\PROGRA~2\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.26.28801\bin\Hostx86\x86\cl.exe" @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\ext_flatbuffers.dir\idl_gen_text.cpp.obj /FdCMakeFiles\ext_flatbuffers.dir\ext_flatbuffers.pdb /FS -c C:\Users\yzqlwt\Documents\EasyStudio\kernel\CsdSerialize\flatbuffers\idl_gen_text.cpp
<<
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel

CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\idl_gen_text.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ext_flatbuffers.dir/idl_gen_text.cpp.i"
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\CsdSerialize\flatbuffers
	"C:\PROGRA~2\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.26.28801\bin\Hostx86\x86\cl.exe" > CMakeFiles\ext_flatbuffers.dir\idl_gen_text.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\yzqlwt\Documents\EasyStudio\kernel\CsdSerialize\flatbuffers\idl_gen_text.cpp
<<
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel

CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\idl_gen_text.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ext_flatbuffers.dir/idl_gen_text.cpp.s"
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\CsdSerialize\flatbuffers
	"C:\PROGRA~2\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.26.28801\bin\Hostx86\x86\cl.exe" @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\ext_flatbuffers.dir\idl_gen_text.cpp.s /c C:\Users\yzqlwt\Documents\EasyStudio\kernel\CsdSerialize\flatbuffers\idl_gen_text.cpp
<<
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel

CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\idl_parser.cpp.obj: CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\flags.make
CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\idl_parser.cpp.obj: C:\Users\yzqlwt\Documents\EasyStudio\kernel\CsdSerialize\flatbuffers\idl_parser.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CsdSerialize/flatbuffers/CMakeFiles/ext_flatbuffers.dir/idl_parser.cpp.obj"
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\CsdSerialize\flatbuffers
	"C:\PROGRA~2\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.26.28801\bin\Hostx86\x86\cl.exe" @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\ext_flatbuffers.dir\idl_parser.cpp.obj /FdCMakeFiles\ext_flatbuffers.dir\ext_flatbuffers.pdb /FS -c C:\Users\yzqlwt\Documents\EasyStudio\kernel\CsdSerialize\flatbuffers\idl_parser.cpp
<<
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel

CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\idl_parser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ext_flatbuffers.dir/idl_parser.cpp.i"
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\CsdSerialize\flatbuffers
	"C:\PROGRA~2\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.26.28801\bin\Hostx86\x86\cl.exe" > CMakeFiles\ext_flatbuffers.dir\idl_parser.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\yzqlwt\Documents\EasyStudio\kernel\CsdSerialize\flatbuffers\idl_parser.cpp
<<
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel

CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\idl_parser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ext_flatbuffers.dir/idl_parser.cpp.s"
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\CsdSerialize\flatbuffers
	"C:\PROGRA~2\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.26.28801\bin\Hostx86\x86\cl.exe" @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\ext_flatbuffers.dir\idl_parser.cpp.s /c C:\Users\yzqlwt\Documents\EasyStudio\kernel\CsdSerialize\flatbuffers\idl_parser.cpp
<<
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel

# Object files for target ext_flatbuffers
ext_flatbuffers_OBJECTS = \
"CMakeFiles\ext_flatbuffers.dir\flatc.cpp.obj" \
"CMakeFiles\ext_flatbuffers.dir\idl_gen_cpp.cpp.obj" \
"CMakeFiles\ext_flatbuffers.dir\idl_gen_fbs.cpp.obj" \
"CMakeFiles\ext_flatbuffers.dir\idl_gen_general.cpp.obj" \
"CMakeFiles\ext_flatbuffers.dir\idl_gen_go.cpp.obj" \
"CMakeFiles\ext_flatbuffers.dir\idl_gen_text.cpp.obj" \
"CMakeFiles\ext_flatbuffers.dir\idl_parser.cpp.obj"

# External object files for target ext_flatbuffers
ext_flatbuffers_EXTERNAL_OBJECTS =

lib\ext_flatbuffers.lib: CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\flatc.cpp.obj
lib\ext_flatbuffers.lib: CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\idl_gen_cpp.cpp.obj
lib\ext_flatbuffers.lib: CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\idl_gen_fbs.cpp.obj
lib\ext_flatbuffers.lib: CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\idl_gen_general.cpp.obj
lib\ext_flatbuffers.lib: CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\idl_gen_go.cpp.obj
lib\ext_flatbuffers.lib: CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\idl_gen_text.cpp.obj
lib\ext_flatbuffers.lib: CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\idl_parser.cpp.obj
lib\ext_flatbuffers.lib: CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\build.make
lib\ext_flatbuffers.lib: CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX static library ..\..\lib\ext_flatbuffers.lib"
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\CsdSerialize\flatbuffers
	$(CMAKE_COMMAND) -P CMakeFiles\ext_flatbuffers.dir\cmake_clean_target.cmake
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\CsdSerialize\flatbuffers
	"C:\PROGRA~2\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.26.28801\bin\Hostx86\x86\link.exe" /lib /nologo /machine:X86 /out:..\..\lib\ext_flatbuffers.lib @CMakeFiles\ext_flatbuffers.dir\objects1.rsp 
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel

# Rule to build all files generated by this target.
CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\build: lib\ext_flatbuffers.lib

.PHONY : CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\build

CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\clean:
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\CsdSerialize\flatbuffers
	$(CMAKE_COMMAND) -P CMakeFiles\ext_flatbuffers.dir\cmake_clean.cmake
	cd C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel
.PHONY : CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\clean

CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\yzqlwt\Documents\EasyStudio\kernel C:\Users\yzqlwt\Documents\EasyStudio\kernel\CsdSerialize\flatbuffers C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\CsdSerialize\flatbuffers C:\Users\yzqlwt\Documents\EasyStudio\shell\assets\kernel\CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CsdSerialize\flatbuffers\CMakeFiles\ext_flatbuffers.dir\depend

