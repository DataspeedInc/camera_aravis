INCLUDE(FindPackageHandleStandardArgs)

# NOTE: it appears that by default find_library and find_path support version passed
# Typical syntax: find_package(Aravis 0.6) or find_package(Aravis 0.4 EXACT)
# EXACT forces req_version == act_version, otherwise req_version >= act_version

FIND_PATH(Aravis_INCLUDE_PATH 
NAMES arv.h
HINTS
  "$ENV{ARAVIS_INCLUDE_PATH}"
  "$ENV{Aravis_INCLUDE_PATH}"
  "$ENV{aravis_INCLUDE_PATH}"
  "$CMAKE_INCLUDE_PATH"
  /usr/local/include
  /usr/include
PATH_SUFFIXES
  aravis-0.6
  aravis-0.4
)

FIND_LIBRARY(Aravis_LIBRARIES
NAMES
  aravis
  libaravis-0.6
  libaravis-0.4
  libaravis
  aravis-0.6
  aravis-0.4

HINTS
  "$ENV{aravis_LIBRARY}"
  "$ENV{Aravis_LIBRARY}"
  "$ENV{ARAVIS_LIBRARY}"
  "$CMAKE_LIBRARY_PATH"
  /usr/local/lib
  /usr/lib
)

FIND_PACKAGE_HANDLE_STANDARD_ARGS(Aravis DEFAULT_MSG
  Aravis_INCLUDE_PATH
  Aravis_LIBRARIES)
