# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\appqml-cpp-example_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\appqml-cpp-example_autogen.dir\\ParseCache.txt"
  "appqml-cpp-example_autogen"
  )
endif()
