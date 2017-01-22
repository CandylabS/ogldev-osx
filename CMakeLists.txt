cmake_minimum_required (VERSION 2.8)

project(OGLdev)

if( CMAKE_BINARY_DIR STREQUAL CMAKE_SOURCE_DIR )
    message( FATAL_ERROR "Please select another Build Directory ! (and give it a clever name, like bin_Visual2012_64bits/)" )
endif()
if( CMAKE_SOURCE_DIR MATCHES " " )
  message( "Your Source Directory contains spaces. If you experience problems when compiling, this can be the cause." )
endif()
if( CMAKE_BINARY_DIR MATCHES " " )
  message( "Your Build Directory contains spaces. If you experience problems when compiling, this can be the cause." )
endif()

# Compile external dependencies 
# add_subdirectory (includes)

include_directories(${CMAKE_SOURCE_DIR}/includes)
include_directories(${CMAKE_SOURCE_DIR}/GL)

if(WIN32)
	set(LIBS glfw opengl32 libglew_static SOIL_Static assimp)
elseif(UNIX)
  set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -Wall")
  # Linux packages native to CMake
  set(LIBS glfw)
  list(APPEND LIBS libglew_static)
  list(APPEND LIBS SOIL_Static)
  list(APPEND LIBS assimp)
  find_package(OpenGL REQUIRED)
  list(APPEND LIBS ${OPENGL_gl_LIBRARY}) # setting LIBS for the first time
  add_definitions(${OPENGL_DEFINITIONS})
  find_package(X11 REQUIRED)
  list(APPEND LIBS ${X11_Xrandr_LIB} ${X11_Xxf86vm_LIB} ${X11_Xinerama_LIB} ${X11_Xi_LIB} ${X11_Xcursor_LIB})
  find_package(Threads REQUIRED)
  list(APPEND LIBS ${CMAKE_THREAD_LIBS_INIT})
  #find_library(RT_LIB rt)
  #list(APPEND LIBS ${RT_LIB})
  # append non-native packages
else()
  set(LIBS )
endif(WIN32)

# Because we use glfw3 we need to link the application with Cocoa
IF(APPLE)
  INCLUDE_DIRECTORIES(/System/Library/Frameworks)
  FIND_LIBRARY(Cocoa_LIBRARY Cocoa)
  FIND_LIBRARY(OpenGL_LIBRARY OpenGL)
  FIND_LIBRARY(IOKit_LIBRARY IOKit)
  FIND_LIBRARY(CoreVideo_LIBRARY CoreVideo)
  MARK_AS_ADVANCED(Cocoa_LIBRARY OpenGL_LIBRARY)
  SET(APPLE_LIBS ${Cocoa_LIBRARY} ${IOKit_LIBRARY} ${OpenGL_LIBRARY} ${CoreVideo_LIBRARY})
  set(LIBS ${LIBS} ${APPLE_LIBS})
ENDIF(APPLE)


# clang && macosx
if(("${CMAKE_CXX_COMPILER_ID}" STREQUAL "Clang") AND APPLE)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -stdlib=libc++")
endif()
# c++11
if(("${CMAKE_CXX_COMPILER_ID}" STREQUAL "Clang") OR ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "GNU"))
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
endif()
# clang && debug adds address sanitizer
if(("${CMAKE_CXX_COMPILER_ID}" STREQUAL "Clang") AND NOT APPLE)
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -fsanitize=address")
endif()

# Tutorial 1
add_executable(tutorial01 
  src/tutorial01/tutorial01.cpp
)
target_link_libraries(tutorial01
  ${LIBS}
)
