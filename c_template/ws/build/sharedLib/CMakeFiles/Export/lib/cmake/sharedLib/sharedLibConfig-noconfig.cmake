#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "sharedLib::sharedLib" for configuration ""
set_property(TARGET sharedLib::sharedLib APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(sharedLib::sharedLib PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libsharedLib.so"
  IMPORTED_SONAME_NOCONFIG "libsharedLib.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS sharedLib::sharedLib )
list(APPEND _IMPORT_CHECK_FILES_FOR_sharedLib::sharedLib "${_IMPORT_PREFIX}/lib/libsharedLib.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
