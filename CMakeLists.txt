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

include_directories(${CMAKE_SOURCE_DIR}/includes)
include_directories(${CMAKE_SOURCE_DIR}/includes/assimp)

# Because we use glfw3 we need to link the application with Cocoa
IF(APPLE)
  INCLUDE_DIRECTORIES(/System/Library/Frameworks)
  FIND_LIBRARY(Cocoa_LIBRARY Cocoa)
  FIND_LIBRARY(OpenGL_LIBRARY OpenGL)
  FIND_LIBRARY(IOKit_LIBRARY IOKit)
  FIND_LIBRARY(GLUT_LIBRARY GLUT)
  FIND_LIBRARY(CoreVideo_LIBRARY CoreVideo)
  MARK_AS_ADVANCED(Cocoa_LIBRARY OpenGL_LIBRARY)
  SET(APPLE_LIBS ${Cocoa_LIBRARY} ${IOKit_LIBRARY} ${OpenGL_LIBRARY} ${CoreVideo_LIBRARY} ${GLUT_LIBRARY} -lGLEW)
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

# Tutorial 2
add_executable(tutorial02 
  src/tutorial02/tutorial02.cpp
)
target_link_libraries(tutorial02
  ${LIBS}
)

# Tutorial 3
add_executable(tutorial03 
  src/tutorial03/tutorial03.cpp
)
target_link_libraries(tutorial03
  ${LIBS}
)

# Tutorial 4
add_executable(tutorial04 
  src/tutorial04/tutorial04.cpp
)
target_link_libraries(tutorial04
  ${LIBS}
)
