# Install script for directory: /home/ubuntu/LPMLN1.1/lpmln_infer/clingo/app/pyclingo

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}/home/ubuntu/.local/lib/python2.7/site-packages/clingo.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/ubuntu/.local/lib/python2.7/site-packages/clingo.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/ubuntu/.local/lib/python2.7/site-packages/clingo.so"
         RPATH "/usr/local/lib")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ubuntu/.local/lib/python2.7/site-packages/clingo.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ubuntu/.local/lib/python2.7/site-packages" TYPE SHARED_LIBRARY FILES "/home/ubuntu/LPMLN1.1/lpmln_infer/clingo/bin/python/clingo.so")
  if(EXISTS "$ENV{DESTDIR}/home/ubuntu/.local/lib/python2.7/site-packages/clingo.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/ubuntu/.local/lib/python2.7/site-packages/clingo.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/ubuntu/.local/lib/python2.7/site-packages/clingo.so"
         OLD_RPATH "/home/ubuntu/LPMLN1.1/lpmln_infer/clingo/bin:"
         NEW_RPATH "/usr/local/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/ubuntu/.local/lib/python2.7/site-packages/clingo.so")
    endif()
  endif()
endif()

