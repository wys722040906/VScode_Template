#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "staticLib::staticLib" for configuration "Debug"
set_property(TARGET staticLib::staticLib APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(staticLib::staticLib PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libstaticLib.a"
  )

list(APPEND _cmake_import_check_targets staticLib::staticLib )
list(APPEND _cmake_import_check_files_for_staticLib::staticLib "${_IMPORT_PREFIX}/lib/libstaticLib.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
