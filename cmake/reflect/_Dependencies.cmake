# This file will be regenerated by `mulle-sourcetree-to-cmake` via
# `mulle-sde reflect` and any edits will be lost.
#
# This file will be included by cmake/share/Files.cmake
#
# Disable generation of this file with:
#
# mulle-sde environment set MULLE_SOURCETREE_TO_CMAKE_DEPENDENCIES_FILE DISABLE
#
if( MULLE_TRACE_INCLUDE)
   message( STATUS "# Include \"${CMAKE_CURRENT_LIST_FILE}\"" )
endif()

#
# Generated from sourcetree: 53522707-7E35-47C5-9D1E-A6E827B2FC79;MulleObjCValueFoundation;no-singlephase;
# Disable with : `mulle-sourcetree mark MulleObjCValueFoundation no-link`
# Disable for this platform: `mulle-sourcetree mark MulleObjCValueFoundation no-cmake-platform-${MULLE_UNAME}`
# Disable for a sdk: `mulle-sourcetree mark MulleObjCValueFoundation no-cmake-sdk-<name>`
#
if( NOT MULLE_OBJC_VALUE_FOUNDATION_LIBRARY)
   find_library( MULLE_OBJC_VALUE_FOUNDATION_LIBRARY NAMES
      ${CMAKE_STATIC_LIBRARY_PREFIX}MulleObjCValueFoundation${CMAKE_DEBUG_POSTFIX}${CMAKE_STATIC_LIBRARY_SUFFIX}
      ${CMAKE_STATIC_LIBRARY_PREFIX}MulleObjCValueFoundation${CMAKE_STATIC_LIBRARY_SUFFIX}
      MulleObjCValueFoundation
      NO_CMAKE_SYSTEM_PATH NO_SYSTEM_ENVIRONMENT_PATH
   )
   if( NOT MULLE_OBJC_VALUE_FOUNDATION_LIBRARY AND NOT DEPENDENCY_IGNORE_SYSTEM_LIBARIES)
      find_library( MULLE_OBJC_VALUE_FOUNDATION_LIBRARY NAMES
         ${CMAKE_STATIC_LIBRARY_PREFIX}MulleObjCValueFoundation${CMAKE_DEBUG_POSTFIX}${CMAKE_STATIC_LIBRARY_SUFFIX}
         ${CMAKE_STATIC_LIBRARY_PREFIX}MulleObjCValueFoundation${CMAKE_STATIC_LIBRARY_SUFFIX}
         MulleObjCValueFoundation
      )
   endif()
   message( STATUS "MULLE_OBJC_VALUE_FOUNDATION_LIBRARY is ${MULLE_OBJC_VALUE_FOUNDATION_LIBRARY}")
   #
   # The order looks ascending, but due to the way this file is read
   # it ends up being descending, which is what we need.
   #
   if( MULLE_OBJC_VALUE_FOUNDATION_LIBRARY)
      #
      # Add MULLE_OBJC_VALUE_FOUNDATION_LIBRARY to ALL_LOAD_DEPENDENCY_LIBRARIES list.
      # Disable with: `mulle-sourcetree mark MulleObjCValueFoundation no-cmake-add`
      #
      list( APPEND ALL_LOAD_DEPENDENCY_LIBRARIES ${MULLE_OBJC_VALUE_FOUNDATION_LIBRARY})
      #
      # Inherit information from dependency.
      # Encompasses: no-cmake-searchpath,no-cmake-dependency,no-cmake-loader
      # Disable with: `mulle-sourcetree mark MulleObjCValueFoundation no-cmake-inherit`
      #
      # temporarily expand CMAKE_MODULE_PATH
      get_filename_component( _TMP_MULLE_OBJC_VALUE_FOUNDATION_ROOT "${MULLE_OBJC_VALUE_FOUNDATION_LIBRARY}" DIRECTORY)
      get_filename_component( _TMP_MULLE_OBJC_VALUE_FOUNDATION_ROOT "${_TMP_MULLE_OBJC_VALUE_FOUNDATION_ROOT}" DIRECTORY)
      #
      #
      # Search for "Definitions.cmake" and "DependenciesAndLibraries.cmake" to include.
      # Disable with: `mulle-sourcetree mark MulleObjCValueFoundation no-cmake-dependency`
      #
      foreach( _TMP_MULLE_OBJC_VALUE_FOUNDATION_NAME "MulleObjCValueFoundation")
         set( _TMP_MULLE_OBJC_VALUE_FOUNDATION_DIR "${_TMP_MULLE_OBJC_VALUE_FOUNDATION_ROOT}/include/${_TMP_MULLE_OBJC_VALUE_FOUNDATION_NAME}/cmake")
         # use explicit path to avoid "surprises"
         if( IS_DIRECTORY "${_TMP_MULLE_OBJC_VALUE_FOUNDATION_DIR}")
            list( INSERT CMAKE_MODULE_PATH 0 "${_TMP_MULLE_OBJC_VALUE_FOUNDATION_DIR}")
            #
            include( "${_TMP_MULLE_OBJC_VALUE_FOUNDATION_DIR}/DependenciesAndLibraries.cmake" OPTIONAL)
            #
            list( REMOVE_ITEM CMAKE_MODULE_PATH "${_TMP_MULLE_OBJC_VALUE_FOUNDATION_DIR}")
            #
            unset( MULLE_OBJC_VALUE_FOUNDATION_DEFINITIONS)
            include( "${_TMP_MULLE_OBJC_VALUE_FOUNDATION_DIR}/Definitions.cmake" OPTIONAL)
            list( APPEND INHERITED_DEFINITIONS ${MULLE_OBJC_VALUE_FOUNDATION_DEFINITIONS})
            break()
         else()
            message( STATUS "${_TMP_MULLE_OBJC_VALUE_FOUNDATION_DIR} not found")
         endif()
      endforeach()
      #
      # Search for "MulleObjCLoader+<name>.h" in include directory.
      # Disable with: `mulle-sourcetree mark MulleObjCValueFoundation no-cmake-loader`
      #
      if( NOT NO_INHERIT_OBJC_LOADERS)
         foreach( _TMP_MULLE_OBJC_VALUE_FOUNDATION_NAME "MulleObjCValueFoundation")
            set( _TMP_MULLE_OBJC_VALUE_FOUNDATION_FILE "${_TMP_MULLE_OBJC_VALUE_FOUNDATION_ROOT}/include/${_TMP_MULLE_OBJC_VALUE_FOUNDATION_NAME}/MulleObjCLoader+${_TMP_MULLE_OBJC_VALUE_FOUNDATION_NAME}.h")
            if( EXISTS "${_TMP_MULLE_OBJC_VALUE_FOUNDATION_FILE}")
               list( APPEND INHERITED_OBJC_LOADERS ${_TMP_MULLE_OBJC_VALUE_FOUNDATION_FILE})
               break()
            endif()
         endforeach()
      endif()
   else()
      # Disable with: `mulle-sourcetree mark MulleObjCValueFoundation no-require-link`
      message( FATAL_ERROR "MULLE_OBJC_VALUE_FOUNDATION_LIBRARY was not found")
   endif()
endif()
