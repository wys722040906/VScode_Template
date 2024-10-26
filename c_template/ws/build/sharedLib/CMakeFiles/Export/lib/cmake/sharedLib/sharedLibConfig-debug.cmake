#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "sharedLib::sharedLib" for configuration "Debug"
set_property(TARGET sharedLib::sharedLib APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(sharedLib::sharedLib PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libsharedLib.so"
  IMPORTED_SONAME_DEBUG "libsharedLib.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS sharedLib::sharedLib )
list(APPEND _IMPORT_CHECK_FILES_FOR_sharedLib::sharedLib "${_IMPORT_PREFIX}/lib/libsharedLib.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
